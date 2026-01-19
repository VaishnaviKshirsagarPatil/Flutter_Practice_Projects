// import 'package:dogpet_app/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   void navigateToScreen(BuildContext, context){
//     Future.delayed(Duration(seconds: 4),(){
//     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen(),));
//     }
//     );}

//   @override
//   Widget build(BuildContext context) {
//     navigateToScreen(BuildContext, context);
    
//     return Scaffold(
//       backgroundColor: Color(0xFFF59245),
//      body: Center(
//        child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("assets/images/paw.png"),
//           SizedBox(height: 10,),
//           Text("PetGuardian", style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF)),),
//           SizedBox(height: 10,),
//            Text("Your Pets' Lifelong Protector", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),)  
//         ],
//        ),
//      ),
//     );
//   }
// }
