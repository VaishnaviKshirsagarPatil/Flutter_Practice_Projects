import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration:BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:[ 
              Color(0xFFFF9933),
              Color(0xFFFF9933),
              Colors.white,
              Color(0xFF138808),
              Colors.deepOrange,
              Colors.white,      
              ],

            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
               Text("INDIA",
                style:GoogleFonts
                .jost(fontSize: 35,fontWeight: FontWeight.w700)),
                Row(    
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width:50,),
                     Container(
                      margin: EdgeInsets.only(top: 20),
                      height:450,
                      width: 7,
                      decoration: BoxDecoration(
                        
                       border: Border.all(color: Colors.white) ,
                       boxShadow: [
                          BoxShadow(
                          color: Colors.grey, 
                           spreadRadius: 2,                    
                           blurRadius: 5,                       
                           offset: Offset(0, 3),                
                          ),
                         ],
                      ),
                     
                    ),

                    Padding(
                    padding:const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 250,
                          color: Colors.deepOrange,
                        ),

                         Container(
                          height: 50,
                          width: 250,
                          color: Colors.white,
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
                        ),

                         Container(
                          height: 50,
                          width: 250,
                          color: Colors.green,
                        ),
                      ],
                    ), 
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                    padding:const EdgeInsets.only(left: 30), 
                    
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  
                      children: [  
                    Container(
                   
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration( 
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                          BoxShadow(
                          color: Colors.grey, 
                           spreadRadius: 2,                    
                           blurRadius: 5,                       
                           offset: Offset(0, 3),                
                          ),
                       ]
                        
                      ),  
                      ),
          
                       Container(
                    
                      height: 30,
                      width: 130, 
                      decoration: BoxDecoration(  
                     border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                          BoxShadow(
                          color: Colors.grey, 
                           spreadRadius: 2,                    
                           blurRadius: 5,                       
                           offset: Offset(0, 3),                
                          ),
                       ]
                        
                      ),  
                      ),
                       Container(
                 
                      height: 30,
                      width: 180,
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                          BoxShadow(
                          color: Colors.grey, 
                           spreadRadius: 2,                    
                           blurRadius: 5,                       
                           offset: Offset(0, 3),                
                          ),
                       ]
                        
                      ),  
                      ),
                      Container(
                 
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                          BoxShadow(
                          color: Colors.grey, 
                           spreadRadius: 2,                    
                           blurRadius: 5,                       
                           offset: Offset(0, 3),                
                          ),
                       ]
                        
                      ),  
                      ),
          
                      ],
                    ),
                    ),
                  ],
                
                ) ,
                SizedBox(height: 30,),
                Text("HAPPY INDEPENDENCE DAY!",
                style:GoogleFonts.quicksand(fontSize: 30,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                 Text("Jay  Hind",
                style:GoogleFonts.jost(fontSize: 30,fontWeight: FontWeight.w700)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
          
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border_outlined,color: Colors.deepOrange,size:40,),
                    SizedBox(width:10,),
                    Icon(Icons.favorite_border_outlined,color: Colors.white,size: 40,),
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border_outlined,color: Colors.green,size: 40,)
                  ] 
                ),
              ],
            ),
          ),
        ),
       ),
    );
  }
}