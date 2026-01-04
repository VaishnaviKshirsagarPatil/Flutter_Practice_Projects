import 'package:chatapp/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/appbar1.png",
                width: MediaQuery.of(context).size.width * 0.95,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Login Now",
              style: GoogleFonts.exo2(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Please login to continue using our app",
              style: GoogleFonts.exo2(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 49,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.exo2(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 49,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: GoogleFonts.exo2(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(300, 50)),
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF227CE3)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                  ),
                ),
                child: Text(
                  "Login",
                  style: GoogleFonts.exo2(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don’t have an account ?",
                    style: GoogleFonts.exo2(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text(
                    "Sign Up ",
                    style: GoogleFonts.exo2(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF227CE3),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
