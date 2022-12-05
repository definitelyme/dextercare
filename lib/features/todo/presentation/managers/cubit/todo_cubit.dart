library todo_cubit.dart;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:dextercare/features/todo/domain/facades/todo_facade.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'todo_cubit.freezed.dart';
part 'todo_state.dart';

@injectable
class TodoCubit extends Cubit<TodoState> with BaseCubit {
  final TodoFacade todoFacade;
  final UserFacade userFacade;
  StreamSubscription<Either<Response, KtList<Shift>>>? _shiftsSubscription;

  StreamSubscription<Either<Response, KtList<Todo>>>? _todoSubscription;

  TodoCubit(this.todoFacade, this.userFacade) : super(TodoState.initial());

  // void getTasks(DateTime date) async {
  //   emit(state.copyWith(currentDate: date));
  // }

  void titleChanged(String? value) => emit(state.copyWith.todo(title: BasicTextField(value)));

  void descriptionChanged(String? value) => emit(state.copyWith.todo(description: BasicTextField(value)));

  void colorChanged(Color? color) => emit(state.copyWith.todo(color: ColorField(color)));

  void toggleAutoAssign(bool? value) => emit(state.copyWith.todo(assignToNextShift: value ?? state.todo.assignToNextShift));

  void shiftChanged(Shift? shift) {
    if (shift != null) emit(state.copyWith.todo(shift: shift));
  }

  void markAsDone(Todo todo) async {
    emit(state.copyWith(todos: state.todos.map((e) => e.id == todo.id ? e.markAsDone() : e)));
    await todoFacade.createOrUpdate(todo.markAsDone());
  }

  void watchShifts() async {
    await _shiftsSubscription?.cancel();
    _shiftsSubscription ??= todoFacade.shifts.listen((data) {
      data.fold(
        (_) => null,
        (shifts) => emit(state.copyWith(shifts: shifts)),
      );
    });
  }

  void watchTodos([DateTime? date]) async {
    emit(state.copyWith(currentDate: date ?? state.currentDate));

    await _todoSubscription?.cancel();
    _todoSubscription = null;

    final user = await userFacade.currentUser;

    if (user != null) {
      _todoSubscription ??= todoFacade.watchTodos(user, state.currentDate).listen((data) {
        data.fold(
          (_) => null,
          (todos) => emit(state.copyWith(todos: todos.isEmpty() ? const KtList.empty() : todos)),
        );
      });
    }
  }

  void createTask() async {
    emit(state.copyWith(validate: true));

    if (state.todo.failure.isNone()) {
      emit(state.copyWith(isSaving: true, status: none()));

      final user = await userFacade.currentUser;

      final todo = user != null
          ? state.todo.copyWith(nurses: state.todo.nurses == null ? KtList.from([user]) : state.todo.nurses?.plusElementIfAbsent(user))
          : state.todo;

      final result = await todoFacade.createOrUpdate(todo);

      await result.fold(
        (f) async => emit(state.copyWith(status: optionOf(f as FirestoreResponse), isSaving: false)),
        (todo) async {
          if (user != null) {
            final _updated = user.copyWith(todos: user.todos == null ? KtList.from([todo]) : user.todos?.plusElementIfAbsent(todo));
            userFacade.createOrUpdate(_updated);
          }

          emit(state.copyWith(
            isSaving: false,
            status: optionOf(const FirestoreResponse.success(message: 'Task created successfully!')),
          ));
        },
      );
    }
  }
}
