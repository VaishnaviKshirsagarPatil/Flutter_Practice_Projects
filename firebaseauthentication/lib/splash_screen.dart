import 'package:firebaseauthentication/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  void navigateToScreen(BuildContext context){
    Future.delayed(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));

    });

  }
  @override
  Widget build(BuildContext context) {
    navigateToScreen(context);
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset("assets/images/food.jpg",
        fit: BoxFit.cover,      
         ),
      ),
      
    );
  }
}