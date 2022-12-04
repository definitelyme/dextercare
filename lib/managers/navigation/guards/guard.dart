library guard.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class RootGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final navigationFromGuard = resolver.route.queryParams.get('guardNavigation') as bool?;

    if (navigationFromGuard == null || navigationFromGuard == false) {
      onNavigate(resolver, router);
    } else {
      resolver.next(true);
    }
  }

  void onNavigate(NavigationResolver resolver, StackRouter router);
}

abstract class RootContextGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;

    if (context != null) {
      final navigationFromGuard = resolver.route.queryParams.get('guardNavigation') as bool?;

      if (navigationFromGuard == null || navigationFromGuard == false) {
        onNavigate(resolver, router, context);
      } else {
        return resolver.next(true);
      }
    } else {
      resolver.next(true);
    }
  }

  void onNavigate(NavigationResolver resolver, StackRouter router, BuildContext context);
}
