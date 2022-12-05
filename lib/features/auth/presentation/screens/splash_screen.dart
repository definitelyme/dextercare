library splash_screen.dart;

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

  static void subscribeToAuthChanges() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      navigator.navigatorKey.currentContext?.read<AuthWatcherCubit>().subscribeToAuthChanges((option) async {
        await option.fold(
          () async => navigator.pushAndPopUntil(const LoginRoute(), predicate: (r) => false),
          (_) async => navigator.pushAndPopUntil(const TodoListRoute(), predicate: (r) => false),
        );
      });
    });
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashScreen.subscribeToAuthChanges();
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
