import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8N6AwuWhOHGg6Dgkc5hGL_FJ8RTkI0No",
            authDomain: "migajas-8187b.firebaseapp.com",
            projectId: "migajas-8187b",
            storageBucket: "migajas-8187b.appspot.com",
            messagingSenderId: "83033989914",
            appId: "1:83033989914:web:406ac8e232b5a2e99702a3",
            measurementId: "G-PKLBJY60HS"));
  } else {
    await Firebase.initializeApp();
  }
}
