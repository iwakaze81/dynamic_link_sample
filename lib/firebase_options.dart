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
    apiKey: 'AIzaSyCeMHIq9qKRpFbS_2BpIyDtOBfn3BwMXRg',
    appId: '1:304016657714:web:be91405356cd975d725b2b',
    messagingSenderId: '304016657714',
    projectId: 'd-link-sample-app',
    authDomain: 'd-link-sample-app.firebaseapp.com',
    storageBucket: 'd-link-sample-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXT8RaK8Q2RwEUlxSyB9ZWIwFoeAGTDsg',
    appId: '1:304016657714:android:ebaf3658ba1eb615725b2b',
    messagingSenderId: '304016657714',
    projectId: 'd-link-sample-app',
    storageBucket: 'd-link-sample-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAqoXXOFSfdJWlBxlu9GVfUk__4KYd8FM',
    appId: '1:304016657714:ios:16f005a66fd02af1725b2b',
    messagingSenderId: '304016657714',
    projectId: 'd-link-sample-app',
    storageBucket: 'd-link-sample-app.appspot.com',
    iosClientId: '304016657714-8te2kdnruv03ujrn24lj6hblljr87h35.apps.googleusercontent.com',
    iosBundleId: 'com.dynamiclink.sample.dynamicLinkSample',
  );
}
