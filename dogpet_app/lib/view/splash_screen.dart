import 'package:dogpet_app/login_screen.dart';
import 'package:dogpet_app/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  void _navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) =>  LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 20),
            Text(
              'PetGuardian',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                height: 1,
                letterSpacing: 0,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '“Your Pets\' Lifelong Protector"',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1,
                letterSpacing: 0,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
