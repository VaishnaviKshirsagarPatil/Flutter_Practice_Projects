import 'package:chatapp/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToSCreen(BuildContext, context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToSCreen(BuildContext, context);
    return Scaffold(
      backgroundColor: Color(0xFF227CE3),
      body: Center(child: Image.asset("assets/images/messanger.png")),
    );
  }
}
