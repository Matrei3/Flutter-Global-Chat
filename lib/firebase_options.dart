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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDyu-UxSsYWUBxJdejKM0wcZRlNKcvNVqg',
    appId: '1:188401506121:web:e14ba77c909537ad24ac98',
    messagingSenderId: '188401506121',
    projectId: 'flutter-chat-6f39f',
    authDomain: 'flutter-chat-6f39f.firebaseapp.com',
    storageBucket: 'flutter-chat-6f39f.appspot.com',
    measurementId: 'G-4C5RCL2PGD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJFGK7ZQq_hzYCzRfRNEG4QHIQdKhMliY',
    appId: '1:188401506121:android:3f2261fcb49bc74d24ac98',
    messagingSenderId: '188401506121',
    projectId: 'flutter-chat-6f39f',
    storageBucket: 'flutter-chat-6f39f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2SLd5na2cR69TltQP0X_sQx553xcpPGk',
    appId: '1:188401506121:ios:264b0e4a9a69503324ac98',
    messagingSenderId: '188401506121',
    projectId: 'flutter-chat-6f39f',
    storageBucket: 'flutter-chat-6f39f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2SLd5na2cR69TltQP0X_sQx553xcpPGk',
    appId: '1:188401506121:ios:264b0e4a9a69503324ac98',
    messagingSenderId: '188401506121',
    projectId: 'flutter-chat-6f39f',
    storageBucket: 'flutter-chat-6f39f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDyu-UxSsYWUBxJdejKM0wcZRlNKcvNVqg',
    appId: '1:188401506121:web:aa3b301777c9153e24ac98',
    messagingSenderId: '188401506121',
    projectId: 'flutter-chat-6f39f',
    authDomain: 'flutter-chat-6f39f.firebaseapp.com',
    storageBucket: 'flutter-chat-6f39f.appspot.com',
    measurementId: 'G-TS384Z2Q2J',
  );

}