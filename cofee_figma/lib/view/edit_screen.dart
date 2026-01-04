
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditScreen extends StatefulWidget {
   EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bannerimage.png",
            height: 330,
            width:MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Stack(
          children: [
           Positioned(
              top: 200, 
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20, right: 10,),
                      child: Text("Information", 
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 75, 3, 57),
                      ),),
                    ),
                    SizedBox(height: 15,),
                 
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 20,),
                     child: Row(
                       children: [
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Name",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                             contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                               labelText: "Nickname",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                             contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        )
                      ],
                                       ),
                   ),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 20),
                     child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                               labelText: "E-mail",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20,),
                     child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Senha",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                   ),      
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20,),
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Birth Date",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                          SizedBox(width: 10,),
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Telephone",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        )
                      ],
                    ),
                  ), 
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 20,),
                     child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Post",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Salary",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        )
                      ],
                                       ),
                   ),
                
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20,),
                     child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "City",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 180,
                          height: 70,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "State",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF9E9E9E),
                                
                              ),
                              contentPadding: EdgeInsets.only(top: 8, left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFFFFFFFF))
                              ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF9E9E9E))
                              )
                            ),
                            
                          
                          ),
                        )
                      ],
                                       ),
                   ),

                  SizedBox(height: 50,),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  //  color: Colors.pink,
                     boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -2),
                        blurRadius: 30,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.15), 
                      )
                    ]
                   ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Cancle", style: GoogleFonts.poppins(
                        color: Color(0xFF8A19D6),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),
                      GestureDetector(
                        onTap: () {
                         showMyDialog(context);
                          
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          width: 178,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Color(0xFF8A19D6),
                            border: Border.all(color: Color(0xFF2563EB), width: 2),
                          ),
                          child: Text("Save", style: GoogleFonts.poppins(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),), 
                        ),
                      )
                    ],
                   ),
                  )
             
                  ],),
                )
                 ),
            ),
         ]
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xFF8A19D6),
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back, color:  Color(0xFFF8FAFC)))),
          ),
          Positioned(
            top: 120, 
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/stack.png"),
                    ),
                  ),
          // Edit Icon
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF8A19D6),
                      border: Border.all(color: Color(0xFFFFFFFF), width: 5),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 6),
                          blurRadius: 16, spreadRadius: 0,
                          color: Color(0xFF132C4A05)
                        )
                      ]
                    ),
                    child: Icon(Icons.edit, color: Color(0xFFF9FBFF))),
                ],
              ),
            ),
          ),

         ] 

          
        
      ),
    );
    
  }

void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        insetPadding: EdgeInsets.symmetric(horizontal: 20), 
        child: Container(
          padding: EdgeInsets.all(20),
          height: 350, 
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child:GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.close, color: Color(0xFF051532))),
              ),
              SizedBox(height: 10),
              Image.asset("assets/images/dialog.png", height: 80),
              SizedBox(height: 20),
              Text(
                "Profile edited!",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131313),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Profile edited Successfully",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFC1C3CB),
                ),
              ),
            SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: 178,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: Color(0xFF2563EB), width: 1),
                    color: Color(0xFF8A19D6),
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
}

