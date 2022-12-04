library app_router.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/features/todo/presentation/index.dart';
import 'package:dextercare/managers/navigation/guards/index.dart';
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
      guards: [GuestGuard],
      page: LoginScreen,
    ),
    //
    AutoRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      guards: [AuthGuard],
      page: CreateTodoScreen,
    ),
    //
    AutoRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      guards: [AuthGuard],
      page: TodoListScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    super.navigatorKey,
    required super.guestGuard,
    required super.authGuard,
  });
}
