import 'dart:developer';
import 'dart:io';

import 'package:chatapp/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ImagePicker picker = ImagePicker();
  XFile? selectedImage;


  //LoginController loginController=LoginController();
  bool isRegisterLoading=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Transform.flip(
              flipX: true,
              child: Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/appbar1.png",
                    width: 380,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Text(
              "sign Up Now",
              style: GoogleFonts.exo2(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Please fill the detail and create account",
              style: GoogleFonts.exo2(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 25),

            ///// Pick Image from gallary
            GestureDetector(
              onTap: () async {
                selectedImage = await picker.pickImage(
                  source: ImageSource.gallery,
                );
                log(selectedImage!.path);
                setState(() {});
              },
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: (selectedImage == null)
                      ? Image.asset(
                          "assets/images/usericon.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          File(selectedImage!.path),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 49,
              width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Full Name",
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
                controller: emailController,
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
                controller: passwordController,
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
            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: ElevatedButton(
                onPressed: () {
                  if(!isRegisterLoading){
                    signUpData();
                  }
                },
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
                  "Sign Up",
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
                    text: "Already have an account ?  ",
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
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login  ",
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

signUpData(){
  isRegisterLoading=true;
  setState(() { });
}
  /// UPLOAD IMAGE TO FIREBASE STORAGE
  
  // String fileName=DateTime.now().microsecondsSinceEpoch.toString()+  selectedImagee!.name;
  // loginController.uploadImage(
  //   fileName:fileName,
  //   file:File(selectedImage!.path),
  // );

  /// DOWNLOAD  IMAGE URL
  /// REGISTER USER WITH EMAIL AND PASSWORD
  /// STORE USER DATA TO FIREBASE FIRESTORE
}
