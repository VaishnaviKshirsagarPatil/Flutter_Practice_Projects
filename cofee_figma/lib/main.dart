
import 'package:cofee_figma/view/signup_screen.dart';
import 'package:cofee_figma/view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: FirebaseOptions(
    apiKey: "AIzaSyDOAwZ8V1fELx7M8V6l6HIsNlQtWMGewuo",
     appId: "1:199841501714:android:b596b6f53fb72f89a6becb", 
     messagingSenderId: "199841501714", 
     projectId: "offefigma"));

   runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
