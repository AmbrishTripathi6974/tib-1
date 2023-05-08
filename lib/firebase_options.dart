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
    apiKey: 'AIzaSyBU8MLKd601vrfB5jYi4Ue7bN8zfALgrRY',
    appId: '1:777994466912:web:b3efb858b74aa4c59f7505',
    messagingSenderId: '777994466912',
    projectId: 'the-intern-bay-92ce2',
    authDomain: 'the-intern-bay-92ce2.firebaseapp.com',
    storageBucket: 'the-intern-bay-92ce2.appspot.com',
    measurementId: 'G-SQP1GM91EG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC70KQnSnvtUEZ2a30Q05QdJ4CW7KNT8iI',
    appId: '1:777994466912:android:8eee0ebf3fd0604f9f7505',
    messagingSenderId: '777994466912',
    projectId: 'the-intern-bay-92ce2',
    storageBucket: 'the-intern-bay-92ce2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATlUBxjeed_IM8eHfJmmGFMrhH8qjSa5A',
    appId: '1:777994466912:ios:c7332d24fc219a9b9f7505',
    messagingSenderId: '777994466912',
    projectId: 'the-intern-bay-92ce2',
    storageBucket: 'the-intern-bay-92ce2.appspot.com',
    iosClientId: '777994466912-708gc2sb9gcau6216q8cegkgrc4konff.apps.googleusercontent.com',
    iosBundleId: 'com.example.tib',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATlUBxjeed_IM8eHfJmmGFMrhH8qjSa5A',
    appId: '1:777994466912:ios:c7332d24fc219a9b9f7505',
    messagingSenderId: '777994466912',
    projectId: 'the-intern-bay-92ce2',
    storageBucket: 'the-intern-bay-92ce2.appspot.com',
    iosClientId: '777994466912-708gc2sb9gcau6216q8cegkgrc4konff.apps.googleusercontent.com',
    iosBundleId: 'com.example.tib',
  );
}