library create_todo_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget that renders CreateTodoScreen.
class CreateTodoScreen extends StatelessWidget with AutoRouteWrapper {
  const CreateTodoScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for CreateTodoScreen'),
      ),
    );
  }
}
