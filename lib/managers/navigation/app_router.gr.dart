// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.guestGuard,
    required this.authGuard,
  }) : super(navigatorKey);

  final GuestGuard guestGuard;

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginScreen()),
      );
    },
    CreateTodoRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CreateTodoScreen()),
        fullscreenDialog: true,
      );
    },
    TodoListRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TodoListScreen()),
        fullscreenDialog: true,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [guestGuard],
        ),
        RouteConfig(
          CreateTodoRoute.name,
          path: '/create-todo-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          TodoListRoute.name,
          path: '/todo-list-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [CreateTodoScreen]
class CreateTodoRoute extends PageRouteInfo<void> {
  const CreateTodoRoute()
      : super(
          CreateTodoRoute.name,
          path: '/create-todo-screen',
        );

  static const String name = 'CreateTodoRoute';
}

/// generated route for
/// [TodoListScreen]
class TodoListRoute extends PageRouteInfo<void> {
  const TodoListRoute()
      : super(
          TodoListRoute.name,
          path: '/todo-list-screen',
        );

  static const String name = 'TodoListRoute';
}
