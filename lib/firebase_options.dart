// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBflrtlTy92GHJP5sdOqj-bblNg14bdFJ4',
    appId: '1:779464296217:web:8922dad1b4f5da56332788',
    messagingSenderId: '779464296217',
    projectId: 'solequest-7bd0a',
    authDomain: 'solequest-7bd0a.firebaseapp.com',
    storageBucket: 'solequest-7bd0a.appspot.com',
    measurementId: 'G-BGSRZY32VT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXsJHJLbqsv_m4OsfqskwBYEC6AsxKBPo',
    appId: '1:779464296217:android:e005a13ba94ab7e9332788',
    messagingSenderId: '779464296217',
    projectId: 'solequest-7bd0a',
    storageBucket: 'solequest-7bd0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5F9Cg7_Uch5UzqJuGvs-85JVEGFBtZQA',
    appId: '1:779464296217:ios:dd15f108c3cabb90332788',
    messagingSenderId: '779464296217',
    projectId: 'solequest-7bd0a',
    storageBucket: 'solequest-7bd0a.appspot.com',
    iosBundleId: 'com.example.sneakersApp',
  );
}
