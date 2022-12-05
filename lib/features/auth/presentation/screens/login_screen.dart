library login_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/managers/locator/locator.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget that renders LoginScreen.
class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) => p.status.getOrNull != c.status.getOrNull,
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.type.when(
            error: () => PopupDialog.error(message: it.message, show: it.message.isNotEmpty).render(),
            success: () => PopupDialog.success(message: it.message, show: it.message.isNotEmpty).render(),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: Text('Screen Template for LoginScreen'),
      ),
    );
  }
}
