import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "",
            authDomain: "final-002296801-24fall.firebaseapp.com",
            projectId: "final-002296801-24fall",
            storageBucket: "final-002296801-24fall.firebasestorage.app",
            messagingSenderId: "429608211981",
            appId: "1:429608211981:web:473bb17b221cf2229b2744",
            measurementId: "G-VX5ZJY2KVX"));
  } else {
    await Firebase.initializeApp();
  }
}
