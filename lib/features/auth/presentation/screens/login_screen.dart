library login_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/managers/locator/locator.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sidePadding),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocSelector<AuthCubit, AuthState, bool>(
                  selector: (s) => s.isLoading,
                  builder: (c, isLoading) => AdaptiveButton(
                    onPressed: context.read<AuthCubit>().loginAnonymous,
                    loadingData: (d) => d.copyWith(isLoading: isLoading),
                    materialData: (d) => d.copyWith(height: 0.065.h),
                    cupertinoData: (d) => d.copyWith(height: 0.065.h),
                    disabled: isLoading,
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    text: 'Use Default Account',
                  ),
                ),
                //
                0.06.vsh,
                //
                BlocSelector<AuthCubit, AuthState, bool>(
                  selector: (s) => s.isGoogleAuthLoading,
                  builder: (c, isLoading) => AdaptiveButton(
                    onPressed: context.read<AuthCubit>().signInWithGoogle,
                    loadingData: (d) => d.copyWith(isLoading: isLoading),
                    materialData: (d) => d.copyWith(height: 0.065.h),
                    cupertinoData: (d) => d.copyWith(height: 0.065.h),
                    backgroundColor: Palette.grey6,
                    disabled: isLoading,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AssetsSvgsAuth.googleSVG),
                        //
                        0.03.hsw,
                        //
                        const AdaptiveText(
                          'Continue with Google',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        //
                        if (isLoading) ...[
                          0.03.hsw,
                          //
                          const CircularProgressBar.adaptive(
                            width: 23,
                            height: 23,
                            strokeWidth: 2.5,
                            color: Palette.primaryColor,
                            colorDark: Palette.primaryColor,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
