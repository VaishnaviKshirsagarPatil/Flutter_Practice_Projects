import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Screen1 extends StatelessWidget {
  List<String> imageList=[
    "assets/images/s2.png",
    "assets/images/s3.jpeg"
    "assets/images/s4.jpeg"

  ];
   Screen1({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 199, 195, 195), // Opaque color
        elevation: 2,
        title: Text(
          "Kabeer Food",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 243, 164, 61),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.perm_contact_cal_outlined,
              color: Color.fromARGB(255, 243, 164, 61),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/s1.jpg"),
                  fit: BoxFit.cover,
                ),            
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orangeAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.white,size: 30,),
                          SizedBox(width: 10,),
                          Text(
                           "Find what you want...",
                            style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                           ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 30,
                                width: 27,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.menu,color: Colors.orangeAccent,size: 20,),
                              ),
                            ],
                          )
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),  
            ),
            SizedBox(height: 20,),
                Row(
                    children: [
                      Column(
                        children: [
                           Text(
                           "Breakfast",
                            style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                           ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 350,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                              boxShadow:[BoxShadow(
                                offset: Offset(3, 3),
                               spreadRadius: 2, 
                               blurRadius: 10,
                                color: Colors.grey

                              )]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/s2.png",),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                   Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/s3.jpeg",),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                   Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                      image: AssetImage("assets/images/s4.jpeg",),
                                      fit: BoxFit.cover
                                      )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ],
        ),
      ),
    );
  }
}