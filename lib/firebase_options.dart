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
    apiKey: 'AIzaSyCUx9xVzmh4P6rq-5cu_2aDBWQddlR-fLg',
    appId: '1:219880041913:web:8938c41d3f88b8a4fcda68',
    messagingSenderId: '219880041913',
    projectId: 'uncp-lcd',
    authDomain: 'uncp-lcd.firebaseapp.com',
    storageBucket: 'uncp-lcd.appspot.com',
    measurementId: 'G-GGEXCLP9FX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDmedZsaFseYVAMweQZpH_sAIQWhWo_h0',
    appId: '1:219880041913:android:20b4ec9960c2e6e5fcda68',
    messagingSenderId: '219880041913',
    projectId: 'uncp-lcd',
    storageBucket: 'uncp-lcd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaz7IRdYlf-e24MuArmt7lOovESgOaq70',
    appId: '1:219880041913:ios:ded437eeca93b125fcda68',
    messagingSenderId: '219880041913',
    projectId: 'uncp-lcd',
    storageBucket: 'uncp-lcd.appspot.com',
    iosClientId: '219880041913-b1vtjhonuudnb28m7jih7rik5uq2qita.apps.googleusercontent.com',
    iosBundleId: 'com.example.lcdLoan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaz7IRdYlf-e24MuArmt7lOovESgOaq70',
    appId: '1:219880041913:ios:ded437eeca93b125fcda68',
    messagingSenderId: '219880041913',
    projectId: 'uncp-lcd',
    storageBucket: 'uncp-lcd.appspot.com',
    iosClientId: '219880041913-b1vtjhonuudnb28m7jih7rik5uq2qita.apps.googleusercontent.com',
    iosBundleId: 'com.example.lcdLoan',
  );
}