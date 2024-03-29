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
    apiKey: 'AIzaSyCuLzCQ6VY_wUWa8_tt38QTIpflcnZPTXw',
    appId: '1:317419418158:web:35f017929df38efcc9e5bf',
    messagingSenderId: '317419418158',
    projectId: 'flutter-chat-app-6f0e8',
    authDomain: 'flutter-chat-app-6f0e8.firebaseapp.com',
    storageBucket: 'flutter-chat-app-6f0e8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUCBtoquCR7aLBq8cJdYONMc8GFftFwG8',
    appId: '1:317419418158:android:76a97cd565d34e26c9e5bf',
    messagingSenderId: '317419418158',
    projectId: 'flutter-chat-app-6f0e8',
    storageBucket: 'flutter-chat-app-6f0e8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBibeXCHnA1PrdJd8e0cmXi52CNrxfFxRM',
    appId: '1:317419418158:ios:db1ef9bd9fa2225ec9e5bf',
    messagingSenderId: '317419418158',
    projectId: 'flutter-chat-app-6f0e8',
    storageBucket: 'flutter-chat-app-6f0e8.appspot.com',
    iosBundleId: 'com.example.chatApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBibeXCHnA1PrdJd8e0cmXi52CNrxfFxRM',
    appId: '1:317419418158:ios:de7bb2773cc61af8c9e5bf',
    messagingSenderId: '317419418158',
    projectId: 'flutter-chat-app-6f0e8',
    storageBucket: 'flutter-chat-app-6f0e8.appspot.com',
    iosBundleId: 'com.example.chatApplication.RunnerTests',
  );
}
