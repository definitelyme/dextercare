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
          () async => navigator.replaceAll([const LoginRoute()]),
          (_) async => navigator.replace(const TodoListRoute()),
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
      backgroundColor: Palette.primaryColor,
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              AssetsSvgsHome.logoSVG,
              color: Colors.white,
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
                color: Colors.white,
                colorDark: Colors.white,
              ),
            ).safeBottom,
          ),
        ],
      ),
    );
  }
}
