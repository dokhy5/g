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
    apiKey: 'AIzaSyAhu0y7bmc6n8fOTdaAnvbohc5m4I7gYwI',
    appId: '1:787733060093:web:8883c8f3ab30fd2857a194',
    messagingSenderId: '787733060093',
    projectId: 'ecommerceapp-cfc5f',
    authDomain: 'ecommerceapp-cfc5f.firebaseapp.com',
    storageBucket: 'ecommerceapp-cfc5f.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiRFc77qqYZOHWhI2RRxe-GN43BuFaqDs',
    appId: '1:787733060093:android:35cba0166c76295c57a194',
    messagingSenderId: '787733060093',
    projectId: 'ecommerceapp-cfc5f',
    storageBucket: 'ecommerceapp-cfc5f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAS-5zxqrLWscMEF7fsRFCmRH__P5ncPXA',
    appId: '1:787733060093:ios:b96456d43616654c57a194',
    messagingSenderId: '787733060093',
    projectId: 'ecommerceapp-cfc5f',
    storageBucket: 'ecommerceapp-cfc5f.firebasestorage.app',
    androidClientId: '787733060093-9uvd85tieglq527lcq9l6emsndlodt2e.apps.googleusercontent.com',
    iosClientId: '787733060093-6obmu855cpn1spulb7flkna1600p3u3r.apps.googleusercontent.com',
    iosBundleId: 'com.example.g',
  );

}