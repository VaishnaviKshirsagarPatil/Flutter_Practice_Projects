import 'package:dogpet_app/view/bottom_navigation_screen.dart';
import 'package:dogpet_app/widgets/custom_button.dart';
import 'package:dogpet_app/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    height: 1,
                    letterSpacing: 0,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/login_logo.png'),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 0,
                      color: Color.fromRGBO(148, 148, 150, 1),
                    ),
                  ),
                ),
                CustomTextfeild(text: 'Enter your Email'),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 0,
                      color: Color.fromRGBO(148, 148, 150, 1),
                    ),
                  ),
                ),
                CustomTextfeild(
                  text: 'Enter Password',
                  suffix: Icon(
                    Icons.visibility_off,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Forgot Password? ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1,
                          color: Color.fromRGBO(31, 32, 41, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'Click Here',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1,
                          color: Color.fromRGBO(31, 32, 41, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  ),
                  child: CustomButton(text: 'LOGIN'),
                ),
                const SizedBox(height: 18),
                Divider(color: Color.fromRGBO(245, 146, 69, 1)),
                const SizedBox(height: 18),
                CustomButton(text: 'LOGIN WITH EMAIL'),
                const SizedBox(height: 20),
                CustomButton(text: 'LOGIN WITH FACEBOOK'),
                const SizedBox(height: 40),
                Text(
                  'By continue you agree to our\nTerms & Privacy Policy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    // height: 1,
                    letterSpacing: 0,
                    color: Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
