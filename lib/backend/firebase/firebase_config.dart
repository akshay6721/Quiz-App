import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDnoa9u7GSBRv28swwD9l7W4A6qsULn-4U",
            authDomain: "quiz-app-xg6aaz.firebaseapp.com",
            projectId: "quiz-app-xg6aaz",
            storageBucket: "quiz-app-xg6aaz.appspot.com",
            messagingSenderId: "551114131105",
            appId: "1:551114131105:web:7797eaa54467b39d0bd2e0"));
  } else {
    await Firebase.initializeApp();
  }
}
