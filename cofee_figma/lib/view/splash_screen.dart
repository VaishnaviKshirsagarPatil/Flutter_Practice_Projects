
import 'package:cofee_figma/view/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

FirebaseAuth firebaseAuth=FirebaseAuth.instance;


  void navigateToScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToScreen(context);

    return Scaffold(
      backgroundColor: const Color(0xFF8A19D6),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,   
            children: [
              Image.asset(
                "assets/images/cofeelogo.png",
                height: 350,
                width: 350,
              ),
          
            SizedBox(height: 80),
          
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: Color(0xFF2563EB), width: 1),
                ),
          
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF8A19D6),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF8A19D6),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
