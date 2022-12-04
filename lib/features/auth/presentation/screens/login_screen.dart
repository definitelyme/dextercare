library login_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget that renders LoginScreen.
class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for LoginScreen'),
      ),
    );
  }
}
