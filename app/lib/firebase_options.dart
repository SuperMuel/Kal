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
    apiKey: 'AIzaSyDJ4JIsaK8lN6YHbp7t72leZsBq47bghzU',
    appId: '1:396378981893:web:a5330edcc656cd30e0fe6c',
    messagingSenderId: '396378981893',
    projectId: 'kal-firebase',
    authDomain: 'kal-firebase.firebaseapp.com',
    storageBucket: 'kal-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQ1K-9DMxVeeh3ki_hKWnCyi10CUWMklU',
    appId: '1:396378981893:android:92f87328e306c260e0fe6c',
    messagingSenderId: '396378981893',
    projectId: 'kal-firebase',
    storageBucket: 'kal-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_Zbn9OSYcTfBUsAeRM9jMzhCpVDsy1LM',
    appId: '1:396378981893:ios:1aad0add8ba1b1d9e0fe6c',
    messagingSenderId: '396378981893',
    projectId: 'kal-firebase',
    storageBucket: 'kal-firebase.appspot.com',
    iosClientId: '396378981893-g5fbq3l4sb4g1k591ap75cmsqlili2m3.apps.googleusercontent.com',
    iosBundleId: 'fr.supermuel.kalApp',
  );
}