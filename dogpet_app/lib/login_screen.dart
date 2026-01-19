// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(child: Text("Login", style: GoogleFonts.poppins(fontWeight: FontWeight.w700, color: Color(0xFFF59245), fontSize: 32))),
//             SizedBox(height: 20,),
//             Center(child: Image.asset("assets/images/Brandmark.png")),
//             SizedBox(height: 30,),
//             Text("Email", style: GoogleFonts.poppins(color: Color(0xFFC2C3CC), fontSize: 12, fontWeight: FontWeight.w500),),
//             SizedBox(height: 5,),
//             SizedBox(
//               height: 45,
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(color: Color(0xFFFAC8A2),width: 2)

//                   ),
//                    enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(color: Color(0xFFFAC8A2),width: 2)
//                   )
//                 ),
//               ),
//             ),
//                SizedBox(height: 10,),
//             Text("Label", style: GoogleFonts.poppins(color: Color(0xFFC2C3CC), fontSize: 12, fontWeight: FontWeight.w500),),
//             SizedBox(height: 5,),
//             SizedBox(
//               height: 45,
//               child: TextField(
//                 decoration: InputDecoration(
//                   suffixIcon: Icon(Icons.visibility_off, color: Color(0xFFF59245),),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(color: Color(0xFFFAC8A2),width: 2)

//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(color: Color(0xFFFAC8A2),width: 2)
//                   )
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             Center(child: Text("Forgot Password ? Click Here", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xFF1F2029)),)),
//             SizedBox(height: 25,),

//             Container(
//               height: 45,
//               width: MediaQuery.of(context).size.width,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xFFF59245),
//               ),
//               child: Text("LOGIN", style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
//             ),
//              SizedBox(height: 25,),
//              Divider(height: 20, color: Color(0xFFF59245),thickness: 2, ),
//             SizedBox(height: 25,),
//              Container(
//               height: 45,
//               width: MediaQuery.of(context).size.width,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xFFF59245),
//               ),
//               child: Text("LOGIN WITH EMAIL", style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
//             ),
//              SizedBox(height: 20,),
//              Container(
//               height: 45,
//               width: MediaQuery.of(context).size.width,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xFFF59245),
//               ),
//               child: Text("LOGIN WITH FACEBOOK", style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
//             ),
//                 SizedBox(height: 45,),
//             Center(
//               child: Text("By continue you agree to our\n Terms & Privacy Policy",
//               style: GoogleFonts.poppins(
//                 fontSize: 12, 
//                 fontWeight: FontWeight.w400,
//                 color: Color(0xFF1F2029)
//               ),),
//             )

//           ],
//         ),
//       ),
      
//     );
//   }
// }