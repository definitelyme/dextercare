library auth_guard.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/managers/navigation/guards/index.dart';
import 'package:dextercare/managers/navigation/navigation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends RootContextGuard {
  @override
  void onNavigate(NavigationResolver resolver, StackRouter router, BuildContext context) {
    final isAuthenticated = context.read<AuthWatcherCubit>().isAuthenticated;

    // if (!isAuthenticated) {
    //   debugPrint('User is not authenticated ==> ${context.read<AuthWatcherCubit>().user}');
    //   // router.replaceAll([const LoginRoute()]);
    // }
    //  else {
    //   resolver.next(true);
    // }
    resolver.next(true);
  }
}
