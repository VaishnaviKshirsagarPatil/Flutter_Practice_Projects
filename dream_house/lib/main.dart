import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          leading: Icon(Icons.arrow_back),
          title: Center(child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text("Property Details",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
          )),
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 290,
                  width: 420,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://tse3.mm.bing.net/th/id/OIP.dfIa3iHXS1mNKo34XJA8UgHaEK?pid=Api&P=0&h=180"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                
                ),
              ),
              SizedBox(height: 20,),
              Text("Dream House",style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.square_outlined,color: Colors.amberAccent.shade200,size: 30),
                  SizedBox(width: 5,),
                  Text("230 m ",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                  ),
                  SizedBox(width: 20,),
                   Icon(Icons.bed,color: Colors.amberAccent.shade200,size: 30),
                  SizedBox(width: 5,),
                  Text("3 Bedrooms",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                  ),
                   SizedBox(width: 20,),
                   Icon(Icons.bathroom_sharp,color: Colors.amberAccent.shade200,size: 30,),
                  SizedBox(width: 5,),
                  Text("4 Bathrooms",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.network("https://tse3.mm.bing.net/th/id/OIP.ykCfp-JNh2km8_HROxEoQQAAAA?pid=Api&P=0&h=180",))
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Owner",style: TextStyle(color: Colors.grey.shade600,fontSize: 20)),
                      SizedBox(height: 7,),
                      Text("John Doe",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold)),

                    ],
                  ),
                  SizedBox(width: 100,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.call,color: Colors.green,),
                    
                  ),
                  SizedBox(width: 20,),
                   Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.grey.shade300,
                    shape: BoxShape.circle
                    ),
                    child: Icon(Icons.message,color: Colors.green.shade700,),
                    
                  ),
                ],
              ),
              SizedBox(height: 30,),
               Text("Description",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w700)),
                SizedBox(height: 5,),
               Text("Orem  Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry standard dummy.",style: TextStyle(color:Colors.grey.shade700,fontSize: 17,fontWeight: FontWeight.normal)),
                SizedBox(height: 30,),
                 Text("Location",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w700)),

                  SizedBox(height: 25,),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.grey.shade300,
                      shape: BoxShape.circle
                      ),
                      child: Icon(Icons.location_on,color: Colors.green.shade700,),
                      
                    ),
                    SizedBox(width: 10,),
                    Center(child: Text("237, Big Apartments, New York, USA",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700))),
                    
                      ],
                    ),
                  
                  SizedBox(height: 20,),
                  Row(
                    children: [
                     Text("\$2000/month",style: TextStyle(color: Colors.green.shade700,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(30)),
                        child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 22),),
                      ),
                      
                    ],
                  )
            ],
          ),
        ),
       
      ),
    );
  }
}
