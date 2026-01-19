import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauthentication/home_screen.dart';
import 'package:firebaseauthentication/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: "AIzaSyA0LH3gaHSfGkU7tkFNxQLKw_NwsplDHgw",
     appId:"1:157673313203:android:291b13484af8008abc71c6",
      messagingSenderId: "157673313203",
      projectId:"fir-authentication-9d22f")
      );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
