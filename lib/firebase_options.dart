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
    apiKey: 'AIzaSyBff_CK9NzZjF6josG0koMUaA2XbJa2bHU',
    appId: '1:132352351670:web:73c450ce96dd9f486db517',
    messagingSenderId: '132352351670',
    projectId: 'greytogreen-3a71d',
    authDomain: 'greytogreen-3a71d.firebaseapp.com',
    storageBucket: 'greytogreen-3a71d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCPe_ZHXGQ8LCtLlQPa-m-OcLQNrfMLRQ',
    appId: '1:132352351670:android:159f2ed94f09830f6db517',
    messagingSenderId: '132352351670',
    projectId: 'greytogreen-3a71d',
    storageBucket: 'greytogreen-3a71d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6fipyDhww_UwHlqvhAKFaUF1IsEfhSY0',
    appId: '1:132352351670:ios:284acd64da0dd6686db517',
    messagingSenderId: '132352351670',
    projectId: 'greytogreen-3a71d',
    storageBucket: 'greytogreen-3a71d.appspot.com',
    iosBundleId: 'com.example.greyToGreen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6fipyDhww_UwHlqvhAKFaUF1IsEfhSY0',
    appId: '1:132352351670:ios:82bd722cd2c195b56db517',
    messagingSenderId: '132352351670',
    projectId: 'greytogreen-3a71d',
    storageBucket: 'greytogreen-3a71d.appspot.com',
    iosBundleId: 'com.example.greyToGreen.RunnerTests',
  );
}
