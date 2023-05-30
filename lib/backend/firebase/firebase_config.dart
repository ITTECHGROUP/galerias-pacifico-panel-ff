import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3xDF8HsRpspXah5IzLenBHLoxt7ennE4",
            authDomain: "pacificoapp-35689.firebaseapp.com",
            projectId: "pacificoapp-35689",
            storageBucket: "pacificoapp-35689.appspot.com",
            messagingSenderId: "240997306321",
            appId: "1:240997306321:web:86b89a9e351fe02aa75af0",
            measurementId: "G-FB73RZRWGE"));
  } else {
    await Firebase.initializeApp();
  }
}
