// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnFkErUg3votCxgAh-dZEFF_FXyn2xE-Y',
    appId: '1:666486309718:android:1b2dc1a2f5ec9c9e92ccf7',
    messagingSenderId: '666486309718',
    projectId: 'dexter-care',
    storageBucket: 'dexter-care.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZUIvl5xlC5ORT4XPLvCo7K2BvCvYZqxI',
    appId: '1:666486309718:ios:d6699d06104608db92ccf7',
    messagingSenderId: '666486309718',
    projectId: 'dexter-care',
    storageBucket: 'dexter-care.appspot.com',
    androidClientId: '666486309718-0oigjj1cnahdhjm1te9vo3ibecamlacd.apps.googleusercontent.com',
    iosClientId: '666486309718-mgo5pe91prf50m4jpsjgiaenetcalcql.apps.googleusercontent.com',
    iosBundleId: 'com.dexterhealth.dextercare',
  );
}
