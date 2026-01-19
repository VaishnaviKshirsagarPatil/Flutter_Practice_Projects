import 'package:education_app/screen2.dart';
import 'package:education_app/screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp((Screen1()));
}
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(215,218,218,1),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Icon(Icons.menu,size: 30,),
        ),
        actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15,top: 20),
             child: Icon(Icons.notifications_outlined,size: 35,),
           )
        ],
           backgroundColor: Color.fromRGBO(215,218,218,1),
      ),
      body: Column(
        children: [
         Container(
          width: MediaQuery.of(context).size.width,
          color:  Color.fromRGBO(215,218,218,1),
          child:  Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome to New",
                 style: GoogleFonts.jost(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0,0,0,1))
                ),
                 Text("Educourse",
                 style: GoogleFonts.jost(
                 fontSize: 35,
                 fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0,0,0,1))
                ),
                     SizedBox(height: 30,), 
                  
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    height: 60,
                    width: 370,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(35)
                     
                    ),
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: "Enter your Keyword",hintStyle: TextStyle(color: Color.fromRGBO(143, 143, 143, 1)),
                         border: InputBorder.none, 
                         contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 20,right: 10),
                          child: Icon(Icons.search_outlined,color: Colors.black,size: 32,),
                        )
                                           
                      ),
                      
                    ),
                  ),
                )
              ],
            ),
          ),
          
         
         ),  
         SizedBox(height: 20,),  
          Expanded(
            child: Container(
            width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               color: Color(0xFFFFFFFF),
               borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
            
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 20),
                      child: Text("Course For You",
                       style: GoogleFonts.jost(
                       fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0,0,0,1))
                      ),
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(),));
                            },
                            child: Container(
                              height: 310,
                              width: 235,
                               alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors:  [                               
                                  Color.fromRGBO(197, 4, 98, 1),
                                  Color.fromRGBO(80, 3, 112, 1),
                                ]
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                     Text("UX Designer from \nscratch",
                                      style: GoogleFonts.jost(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1))
                                 ),
                                 Image.asset("assets/images/containerimage.png",height: 200,width: 200,)
                                     
                                  ],
                                ),
                              ),
                            ),
                          ),
                            SizedBox(width: 20,),
                             GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen3(),));
                              },
                               child: Container(
                                height: 310,
                                width: 235,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                     colors:  [
                                         Color.fromRGBO(0, 77, 228, 1),
                                         Color.fromRGBO(1, 47, 135, 1),
                                         ]
                                         )
                                              ),
                                         child:  Padding(
                                           padding: const EdgeInsets.all(20),
                                        child: Column(
                                    children: [
                                     Text("Design Thinking \n The Beginner.",
                                      style: GoogleFonts.jost(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1))
                                 ),
                                  Image.asset("assets/images/Objects.png",height: 200,width: 200)
                                     
                                  ],
                                ),
                                ),
                               ),
                             ),     
                        ],
                      ),
                    ),
                       SizedBox(height: 20,),
                    Text("Course By category",
                       style: GoogleFonts.jost(
                       fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1))
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)    
                                
                                  ),
                                  child: Image.asset("assets/images/v1.png"),
                                ),
                                SizedBox(height: 10,),
                                Text("UI/UX",
                                      style: GoogleFonts.jost(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(25, 0, 56, 1))
                                 ),
                              
                              ],
                            ),
                            SizedBox(width: 20,),
                             Column(
                              children: [
                                Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(25, 0, 56, 1)    
                                
                                  ),
                                  child: Image.asset("assets/images/v2.png"),
                                ),
                                SizedBox(height: 10,),
                                Text("VISUAL",
                                      style: GoogleFonts.jost(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(25, 0, 56, 1))
                                 ),
                              
                              ],
                              
                            ),
                             SizedBox(width: 20,),
                             Column(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)
                                
                                  ),
                                  child: Image.asset("assets/images/v3.png"),
                                ),
                                SizedBox(height: 10,),
                                Text("ILLUSTRATION",
                                      style: GoogleFonts.jost(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(25, 0, 56, 1)     
                                      ),
                                 ),
                              
                              ],
                            ),
                            SizedBox(width: 20,),
                             Column(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(25, 0, 56, 1)
                                
                                  ),
                                  child: Image.asset("assets/images/v4.png"),
                                ),
                                SizedBox(height: 10,),
                                Text("PHOTO",
                                      style: GoogleFonts.jost(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(25, 0, 56, 1)
                                      ),
                                 ),
                              
                              ],
                            )
                          ],
                        ),
                      )
                      
                     
                  ],
                ),
              ),
            
            ),
          )
        ],
      ),
    );
  }
}