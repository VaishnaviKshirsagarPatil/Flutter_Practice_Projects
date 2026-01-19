import 'package:education_app/screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Screen2());
}
// ignore: must_be_immutable
class Screen2 extends StatelessWidget {
   Screen2({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor:    Color.fromRGBO(80, 3, 112, 1),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
             height: 380,
             decoration: BoxDecoration(
              gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: 
              [
                  Color.fromRGBO(197, 4, 98, 1),
                  Color.fromRGBO(80, 3, 112, 1),
              ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 70,left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context,MaterialPageRoute(builder: (context)=>Screen1(),));
                    },
                  child: Icon(Icons.arrow_back,color: Color.fromRGBO(255, 255, 255, 1),size: 30,)),
                  SizedBox(height: 20,),
                  Text("UX Designer from\nScratch.", style: GoogleFonts.jost(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 35,fontWeight: FontWeight.w500)),
                  SizedBox(height: 15,),
                  Text("Basix guideline & tipes & tricks for how to\nbecome a UX desiner easily.",
                  style: GoogleFonts.jost(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 18,fontWeight: FontWeight.w400)),
                    SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 82, 178, 1),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color.fromRGBO(255, 255, 255, 1))
                              ),
                              child: Image.asset("assets/images/contact.png")
                            ), 
                            SizedBox(width: 5,),
                            Text("Author:",style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Color.fromRGBO(190, 154, 197, 1),)),
                            Text("Jenny",style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1),)),
                             SizedBox(width: 80,),
                           Row(
                             children: [
                               Text("4.8",style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1),)),
                             ],
                           ),
                           Icon(Icons.star,color: Color.fromRGBO(255, 146, 0, 1),),
                            Text("(20 review)",style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w400,color: Color.fromRGBO(190, 154, 197, 1),)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),  
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
             color: Color.fromRGBO(213, 210, 210, 1),
             borderRadius: BorderRadius.only(topLeft: Radius.circular(38), topRight: Radius.circular(38))
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index,)
                 {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                     children: [
                    Container(
                    height: 90,
                    width: 370,
                  decoration: BoxDecoration(
                 boxShadow: [
                     BoxShadow(
                     color: Colors.grey.withOpacity(0.5), 
                     spreadRadius: 5, 
                     blurRadius: 3,   
                     offset: Offset(0, 10), 
                      ),
                    ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                Container(
                  height: 75,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 239, 239, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Stack(
                       alignment: Alignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                       child:Image.asset("assets/images/Vector1.png",fit: BoxFit.contain,),         
                      ),
                       Container(
                        height: 10,
                        width: 10,
                       child: Image.asset(
                         "assets/images/Vector2.png", // Your second image
                         fit: BoxFit.contain,
                         ),
                        ),
                      
                    ],
                  ),
                  
                ),    
               SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Intoduction",style: GoogleFonts.jost(fontSize: 22,fontWeight: FontWeight.w500,color: Color.fromRGBO(0, 0, 0, 1),)),
                        SizedBox(height: 5,),
                       Text("Lorem Ipsum is a Dummy text...",style: GoogleFonts.jost(fontSize: 15,fontWeight: FontWeight.w500,color: Color.fromRGBO(143, 143, 143, 1),)),
                    ],
                  ), 
                )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    },
    ),
    ),
            
     )
     ],
      ),
    );
  }
}