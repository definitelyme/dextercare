library app_router.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: <AutoRoute<dynamic>>[
    AutoRoute(
      initial: true,
      fullMatch: true,
      usesPathAsKey: true,
      page: SplashScreen,
    ),
    //
    AutoRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: LoginScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter([super.navigatorKey]);
}
