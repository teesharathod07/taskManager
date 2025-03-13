import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsI7aBelGwcPsY0IUqZbXu-wYPq4uNrUY",
            authDomain: "task-manager-oy4i2j.firebaseapp.com",
            projectId: "task-manager-oy4i2j",
            storageBucket: "task-manager-oy4i2j.firebasestorage.app",
            messagingSenderId: "830033734119",
            appId: "1:830033734119:web:a8433a19108c20305df542"));
  } else {
    await Firebase.initializeApp();
  }
}
