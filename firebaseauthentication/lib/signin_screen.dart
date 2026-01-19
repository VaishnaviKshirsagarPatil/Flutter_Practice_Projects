import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauthentication/custom_snakbar.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/food.jpg"),
                //opacity: 0.6, 
                fit: BoxFit.cover, 
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                height: 400,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white,width: 1),
                 color:Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8), // semi-transparent bg
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () async {
                          if (emailController.text.trim().isNotEmpty &&
                              passwordController.text.trim().isNotEmpty) {
                            try {
                              /// CREATE NEW USER
                              UserCredential userCredentialObj =
                                  await _firebaseAuth.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                
                              log("User Credentials: $userCredentialObj");
                              CustomSnackbar().showCustomSnakbar(
                                context,
                                "Registered Successfully!",
                                bgColor: Colors.green,
                              );
                
                              Navigator.of(context).pop();
                            } on FirebaseAuthException catch (error) {
                              log("Error Code: ${error.code}");
                              log("Error Message: ${error.message}");
                
                              if (error.code.toString() == "invalid-email") {
                                CustomSnackbar().showCustomSnakbar(
                                  context,
                                  "Enter valid email id.",
                                  bgColor: Colors.red,
                                );
                              } else {
                                CustomSnackbar().showCustomSnakbar(
                                  context,
                                  error.message!,
                                  bgColor: Colors.red,
                                );
                              }
                            }
                          } else {
                            CustomSnackbar().showCustomSnakbar(
                              context,
                              "Enter valid data.",
                              bgColor: Colors.red,
                            );
                          }
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
