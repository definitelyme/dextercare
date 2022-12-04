library splash_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget that renders SplashScreen.
class SplashScreen extends StatefulWidget with AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for SplashScreen'),
      ),
    );
  }
}
