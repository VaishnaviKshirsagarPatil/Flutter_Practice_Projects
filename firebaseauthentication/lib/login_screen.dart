import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauthentication/custom_snakbar.dart';
import 'package:firebaseauthentication/home_screen.dart';
import 'package:firebaseauthentication/signin_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
             Text("Login", style: TextStyle(
              color: Colors.indigo, fontSize: 25,
             ),) ,
             SizedBox(height: 20,),
             SizedBox(
              width: 300,
               child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
               ),
             ),
             SizedBox(height: 20,),
              SizedBox(
              width: 300,
               child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
               ),
             ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed:()async{
                    if(emailController.text.trim().isNotEmpty &&
                    passwordController.text.trim().isNotEmpty ){

                      try{
                        UserCredential userCredentialObj=await _firebaseAuth.signInWithEmailAndPassword(
                          email: emailController.text, 
                          password: passwordController.text,
                          );

                          log("User Credentials:$userCredentialObj");
                          log("User Credentials:${userCredentialObj.user}");

                          log("User Id: ${userCredentialObj.user!.uid}");
                          CustomSnackbar().showCustomSnakbar(
                            context, 
                            "Login Dsuccessful..",
                            bgColor: Colors.green,
                           );

                            //Clear Controller
                            emailController.clear();
                            passwordController.clear();

                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                              builder: (context){
                                return HomeScreen();
                              }
                              )
                              );

                      }on FirebaseAuthException catch(error){
                        CustomSnackbar().showCustomSnakbar(
                          context, 
                          error.message!,
                          bgColor: Colors.red,
                          );
                      }
                     }else{
                       CustomSnackbar().showCustomSnakbar(
                          context, 
                          "Enter Valid data",
                          bgColor: Colors.red,
                          );

                    }
                  },
                 child: Text("Login", style: TextStyle(fontSize: 25),)),
                 SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SigninScreen()));
                      },
                       child: Text("New user? Sign Up", style: TextStyle(
                          color: Colors.indigo, fontSize: 16,
                           ),),
                     ),
                   ],
                 ) ,
          ],
        ),
      ),
    );
  }
}