library splash_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/managers/navigation/app_router.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

/// A stateful widget that renders SplashScreen.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  late AuthWatcherCubit _watcherCubit;

  @override
  void initState() {
    _watcherCubit = context.read<AuthWatcherCubit>();
    Future.delayed(const Duration(milliseconds: 1500), () {
      _watcherCubit.subscribeToAuthChanges((option) {
        option.fold(
          () => WidgetsBinding.instance.addPostFrameCallback((_) {
            navigator.navigate(const LoginRoute());
          }),
          (_) => WidgetsBinding.instance.addPostFrameCallback((_) {
            navigator.navigate(const TodoListRoute());
          }),
        );
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              AssetsSvgsHome.logoSVG,
              color: Palette.onSurface,
              width: 0.35.w,
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: const Center(
              child: CircularProgressBar.adaptive(
                width: 27,
                height: 27,
                strokeWidth: 2,
              ),
            ).safeBottom,
          ),
        ],
      ),
    );
  }
}
