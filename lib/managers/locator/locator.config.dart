// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:dextercare/features/auth/data/repositories/auth_facade_impl.dart'
    as _i12;
import 'package:dextercare/features/auth/domain/index.dart' as _i11;
import 'package:dextercare/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i14;
import 'package:dextercare/features/auth/presentation/managers/auth_watcher/auth_watcher_cubit.dart'
    as _i13;
import 'package:dextercare/managers/locator/modules.dart' as _i15;
import 'package:dextercare/managers/navigation/navigation.dart' as _i3;
import 'package:dextercare/managers/theme/theme_cubit.dart' as _i10;
import 'package:firebase_analytics/firebase_analytics.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModules = _$AppModules();
    final firebaseModules = _$FirebaseModules();
    final serviceModules = _$ServiceModules();
    gh.singleton<_i3.AppRouter>(appModules.router);
    gh.lazySingleton<_i4.FirebaseAnalytics>(
        () => firebaseModules.firebaseAnalytics);
    await gh.singletonAsync<_i5.FirebaseApp>(
      () => firebaseModules.firebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i6.FirebaseAuth>(() => firebaseModules.firebaseAuth);
    gh.lazySingleton<_i7.FirebaseCrashlytics>(
        () => firebaseModules.firebaseCrashlytics);
    gh.lazySingleton<_i8.FirebaseFirestore>(() => firebaseModules.firestore);
    gh.lazySingleton<_i9.GoogleSignIn>(() => serviceModules.googleSignIn);
    gh.singleton<_i10.ThemeCubit>(_i10.ThemeCubit());
    gh.factory<_i11.AuthFacade>(() => _i12.AuthFacadeImpl(
          gh<_i6.FirebaseAuth>(),
          gh<_i9.GoogleSignIn>(),
        ));
    gh.singleton<_i13.AuthWatcherCubit>(
        _i13.AuthWatcherCubit(gh<_i11.AuthFacade>()));
    gh.factory<_i14.AuthCubit>(() => _i14.AuthCubit(gh<_i11.AuthFacade>()));
    return this;
  }
}

class _$FirebaseModules extends _i15.FirebaseModules {}

class _$AppModules extends _i15.AppModules {}

class _$ServiceModules extends _i15.ServiceModules {}
