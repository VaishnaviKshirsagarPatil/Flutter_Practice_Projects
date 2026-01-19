// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F7),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 ClipRRect(
//                   borderRadius:BorderRadius.circular(20),
//                   child: Image.asset("assets/images/image.png",
//                   height: 70,
//                   width: 70,
//                   fit: BoxFit.cover,),         
//                   ),
//                   SizedBox(width: 20,),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Hello, Vaishnavi", style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xFF000000)
//                       ),),
//                       SizedBox(height: 10,),
//                       Text("Good Morning!", style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFFC2C3CC)
//                       ),),
                      
//                     ],
//                   ),
//                   Spacer(),
//                   Icon(Icons.notifications_none, size: 30,),    
//                ],
//             ),
//             SizedBox(height: 25,),
//              SizedBox(
//               height: 45,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "search",hintStyle: TextStyle(color: Color(0xFFC2C3CC)),
//                   suffixIcon: Icon(Icons.search_rounded, color: Color(0xFFF59245),),
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
//             SizedBox(height: 20,),
//             Container(
//               height: 99,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: Color(0xFFFFFFFF),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xFF16223314),
//                     offset: Offset(0, 8),
//                     blurRadius: 16,
//                     spreadRadius: -4

//                   )
//                 ]
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         Text("In Love With Pets?", style: GoogleFonts.poppins(
//                           fontSize: 18, 
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xFF000000)
//                         ),),
//                         // SizedBox(height: 5,),
//                          Text("Get all what you ", style: GoogleFonts.poppins(
//                           fontSize: 18, 
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xFFF59245)
//                         ),)
//                       ],
//                     ),
//                   ),
//                   Spacer(),
//                   Image.asset("assets/images/imageboy.png", 
//                  )
//                 ],
//               ),
//             )

//           ],
//         ),
//       ),
//     );
//   }
// }