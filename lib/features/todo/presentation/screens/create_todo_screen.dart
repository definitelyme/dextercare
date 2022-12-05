library create_todo_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:dextercare/features/todo/presentation/managers/cubit/todo_cubit.dart';
import 'package:dextercare/managers/locator/locator.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget that renders CreateTodoScreen.
class CreateTodoScreen extends StatefulWidget with AutoRouteWrapper {
  final List<DateTime> days;

  const CreateTodoScreen({super.key, required this.days});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TodoCubit>(),
      child: BlocListener<TodoCubit, TodoState>(
        listenWhen: (p, c) => p.status.getOrNull != c.status.getOrNull,
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.type.when(
            error: () => PopupDialog.error(message: it.message, show: it.message.isNotEmpty).render(),
            success: () => PopupDialog.success(
              message: it.message,
              show: it.message.isNotEmpty,
              listener: (p0) => p0?.fold(
                dismissed: navigator.pop,
              ),
            ).render(),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  static const _itemVerticalPadding = 10.0;

  late TodoCubit _cubit;
  late ScrollController _scrollController;

  List<DateTime> days = [];

  @override
  void initState() {
    _scrollController = ScrollController();
    _cubit = context.read<TodoCubit>();
    _cubit.watchShifts();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => days = widget.days);

      Future.delayed(const Duration(milliseconds: 600), () {
        final indexOfToday = days.indexWhere((e) {
          return e.isAtSameMomentAs(
            DateTime(
              _cubit.state.currentDate.year,
              _cubit.state.currentDate.month,
              _cubit.state.currentDate.day,
            ),
          );
        });
        _animateToIndex(indexOfToday);
      });
    });
  }

  double get _itemPadding => 0.037.w;
  double get _itemWidth => 0.13.w;

  void _animateToIndex(int index) {
    if (_scrollController.hasClients)
      _scrollController.animateTo(
        ((index * _itemWidth) + (index * _itemPadding)),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.primaryColor.shade700,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (_, __) => [
          SliverAppBar.large(
            title: const AdaptiveText(
              'Add Task',
              fontSize: 26,
              textColor: Colors.white,
            ),
            backgroundColor: Palette.primaryColor.shade700,
            leading: Utils.isPlatform(
              material: AdaptiveToolbar.materialToolbarAction(iconColor: Colors.white),
              cupertino: AdaptiveToolbar.cupertinoToolbarAction(iconColor: Colors.white),
            ),
          ),
        ],
        body: Column(
          children: [
            Expanded(
              child: Material(
                color: Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate.fixed([
                        0.025.vsh,
                        //
                        ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: _itemWidth + _itemVerticalPadding),
                          child: ListView.custom(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: sidePadding),
                            physics: Utils.physics,
                            semanticChildCount: days.length,
                            childrenDelegate: SliverChildBuilderDelegate(
                              (c, i) => Padding(
                                padding: EdgeInsets.only(right: _itemPadding),
                                child: Center(
                                  child: BlocSelector<TodoCubit, TodoState, DateTime>(
                                    selector: (s) => s.currentDate,
                                    builder: (_, selected) {
                                      final isSelected =
                                          days[i].day == selected.day && days[i].month == selected.month && days[i].year == selected.year;

                                      return Stack(
                                        children: [
                                          Material(
                                            color: isSelected ? Palette.primary : Palette.grey6,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: 20.br,
                                              side: isSelected ? BorderSide(color: Palette.primary, width: 1) : BorderSide.none,
                                            ),
                                            child: AdaptiveInkWell(
                                              onTap: () {
                                                // _cubit.getTasks(days[i]);
                                                _animateToIndex(i);
                                              },
                                              borderRadius: 20.br,
                                              containedInkWell: true,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: _itemVerticalPadding),
                                                child: SizedBox.fromSize(
                                                  size: Size.fromWidth(_itemWidth),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      AdaptiveText(
                                                        DateFormat.E().format(days[i]).toUpperCase(),
                                                        maxLines: 1,
                                                        fontSize: 12.sp,
                                                        textAlign: TextAlign.center,
                                                        fontWeight: FontWeight.bold,
                                                        textColor: isSelected ? Palette.grey6 : Colors.black87,
                                                        textColorDark: isSelected ? Palette.grey6 : Colors.black87,
                                                      ),
                                                      //
                                                      AdaptiveText(
                                                        '${days[i].day}',
                                                        maxLines: 1,
                                                        fontSize: 17.sp,
                                                        textAlign: TextAlign.center,
                                                        fontWeight: FontWeight.w400,
                                                        textColor: isSelected ? Palette.grey6 : Colors.black87,
                                                        textColorDark: isSelected ? Palette.grey6 : Colors.black87,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              childCount: days.length,
                            ),
                          ),
                        ),
                        //
                        0.035.vsh,
                      ]),
                    ),
                    //
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          AdaptiveText(
                            'Task Name',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          //
                          0.01.vsh,
                          //
                          BlocBuilder<TodoCubit, TodoState>(
                            builder: (c, s) => AdaptiveTextFormInput(
                              hintText: 'Feed Mrs. Smith by 5pm',
                              keyboardType: TextInputType.text,
                              focus: TodoState.titleFocus,
                              next: TodoState.descriptionFocus,
                              validate: s.validate,
                              disabled: s.isSaving,
                              errorText: s.todo.title.value.fold(
                                (f) => f.message,
                                (_) => null,
                              ),
                              onChanged: _cubit.titleChanged,
                            ),
                          ),
                          //
                          0.03.vsh,
                          //
                          AdaptiveText(
                            'Task Description',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          //
                          0.01.vsh,
                          //
                          BlocBuilder<TodoCubit, TodoState>(
                            builder: (c, s) => AdaptiveTextFormInput(
                              minLines: 4,
                              hintText: 'Give her a healthy meal and a cup of water..',
                              keyboardType: TextInputType.multiline,
                              focus: TodoState.descriptionFocus,
                              validate: s.validate,
                              disabled: s.isSaving,
                              errorText: s.todo.description.value.fold(
                                (f) => f.message,
                                (_) => null,
                              ),
                              onChanged: _cubit.descriptionChanged,
                            ),
                          ),
                          //
                          0.03.vsh,
                          //
                          AdaptiveText(
                            'Shift',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          //
                          0.01.vsh,
                          //
                          BlocBuilder<TodoCubit, TodoState>(
                            builder: (c, s) => AdaptiveDropdown<Shift?>(
                              items: s.shifts.asList(),
                              groupValue: s.shifts.firstOrNull((e) => s.todo.shift.id == e.id),
                              text: (it) => it?.name.getOrNull,
                              itemFontSize: 15.sp,
                              validate: s.validate,
                              errorText: (p0) => p0 == null ? 'Please choose a shift' : null,
                              onChanged: _cubit.shiftChanged,
                            ),
                          ),
                          //
                          0.03.vsh,
                          //
                          AdaptiveText(
                            'Color',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          //
                          0.01.vsh,
                          //
                          ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 0.09.w),
                            child: ListView.custom(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              physics: Utils.physics,
                              semanticChildCount: Todo.colors.length,
                              childrenDelegate: SliverChildBuilderDelegate(
                                (c, i) => Padding(
                                  padding: EdgeInsets.only(right: _itemPadding),
                                  child: Center(
                                    child: BlocSelector<TodoCubit, TodoState, Color?>(
                                      selector: (s) => s.todo.color.getOrNull,
                                      builder: (_, selected) {
                                        final isSelected = Todo.colors[i] == selected;

                                        return Stack(
                                          children: [
                                            Material(
                                              color: Todo.colors[i],
                                              shape: RoundedRectangleBorder(
                                                borderRadius: 100.br,
                                                side: isSelected
                                                    ? BorderSide(color: Palette.primaryColor.shade300, width: 3)
                                                    : BorderSide.none,
                                              ),
                                              child: AdaptiveInkWell(
                                                onTap: () => _cubit.colorChanged(Todo.colors[i]),
                                                borderRadius: 100.br,
                                                containedInkWell: true,
                                                child: SizedBox.fromSize(size: Size.fromWidth(0.09.w)),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                childCount: Todo.colors.length,
                              ),
                            ),
                          ),
                          //
                          0.05.vsh,
                          //
                          BlocSelector<TodoCubit, TodoState, bool>(
                            selector: (s) => s.todo.assignToNextShift,
                            builder: (c, value) => Row(
                              children: [
                                Switch.adaptive(
                                  value: value,
                                  inactiveThumbColor: Colors.grey.shade500,
                                  inactiveTrackColor: Palette.grey5,
                                  onChanged: _cubit.toggleAutoAssign,
                                ),
                                //
                                GestureDetector(
                                  onTap: () => _cubit.toggleAutoAssign(!value),
                                  child: AdaptiveText(
                                    'Automatically Assign to next shift',
                                    maxLines: 1,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                          AdaptiveText(
                            'If this task is not completed by the end of the shift, it will be automatically assigned to the next shift.',
                            maxLines: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.left,
                            textColor: Palette.grey3,
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          //
                          0.03.vsh,
                          //
                          Align(
                            alignment: Alignment.centerRight,
                            child: BlocSelector<TodoCubit, TodoState, bool>(
                              selector: (s) => s.isSaving,
                              builder: (c, isSaving) => AdaptiveButton(
                                text: 'Add',
                                loadingData: (d) => d.copyWith(isLoading: isSaving),
                                materialData: (d) => d.copyWith(width: 0.27.w, height: 0.066.h),
                                cupertinoData: (d) => d.copyWith(width: 0.27.w, height: 0.066.h),
                                fontSize: 17,
                                disabled: isSaving,
                                fontWeight: FontWeight.w600,
                                textColor: Colors.white,
                                onPressed: _cubit.createTask,
                              ),
                            ),
                          ),
                          //
                          0.03.vsh.safeBottom,
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
