library todo_list_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget that renders TodoListScreen.
class TodoListScreen extends StatefulWidget with AutoRouteWrapper {
  const TodoListScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  TodoListScreenState createState() => TodoListScreenState();
}

class TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.read<AuthWatcherCubit>().signOut(),
          child: Text('Screen Template for TodoListScreen'),
        ),
      ),
    );
  }
}
