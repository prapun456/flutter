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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC1k3b-oXCy0e00e-MK4ynrjoj5awg8g9A',
    appId: '1:494089190484:web:1775f53816187483f801c1',
    messagingSenderId: '494089190484',
    projectId: 'flutterauth-6fe24',
    authDomain: 'flutterauth-6fe24.firebaseapp.com',
    storageBucket: 'flutterauth-6fe24.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc0tNSVvOn9HarjoxdeBlmbLWnU5LbpY0',
    appId: '1:494089190484:android:1eab64805dec6d16f801c1',
    messagingSenderId: '494089190484',
    projectId: 'flutterauth-6fe24',
    storageBucket: 'flutterauth-6fe24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClMZ5xKWccjSVYochrOPLt7eItImGk2yQ',
    appId: '1:494089190484:ios:04224d7511a31286f801c1',
    messagingSenderId: '494089190484',
    projectId: 'flutterauth-6fe24',
    storageBucket: 'flutterauth-6fe24.appspot.com',
    iosBundleId: 'com.example.widgetsBasic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClMZ5xKWccjSVYochrOPLt7eItImGk2yQ',
    appId: '1:494089190484:ios:ced5a1273b4f4fcbf801c1',
    messagingSenderId: '494089190484',
    projectId: 'flutterauth-6fe24',
    storageBucket: 'flutterauth-6fe24.appspot.com',
    iosBundleId: 'com.example.widgetsBasic.RunnerTests',
  );
}
