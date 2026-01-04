import 'package:carousel_slider/carousel_slider.dart';
import 'package:cofee_figma/view/edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  

  List<Map> curosellist=[
    {
      "title":"Mangae",
      "subtitle":"Rapier",
      "subname":"Access",
      "image":"assets/images/sliderimage.png",

    },
    {
      "title":"vaishnavi",
      "subtitle":"Rapier",
      "subname":"Access",
      "image":"assets/images/sliderimage.png",

    },
    {
      "title":"kalyani",
      "subtitle":"Rapier",
      "subname":"Access",
      "image":"assets/images/sliderimage.png",

    },
    {
      "title":"Shivani",
      "subtitle":"Rapier",
      "subname":"Access",
      "image":"assets/images/sliderimage.png",

    },
  ];


  CarouselController _controller=CarouselController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FBFF),
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            GestureDetector(
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditScreen ()));
                },
              child: Image.asset("assets/images/homepage.png",
              height: 48,
                        ),
            ),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("Fulano", style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2C2C2C),
                ),),
                 Text("Administrator", style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8C8C8C),
              ),),
              ],
            ),
            Spacer(),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 6),
                    blurRadius: 16,
                    spreadRadius: 0,
                    color: Color(0xFF132C4A05)
                  )
                ]
      
              ),
              child: Icon(Icons.notification_add_outlined,color: Color(0xFF2C2C2C),),
            )
               
          ],
        ),
       SizedBox(height: 20,),
          Row(
           children: [
             SizedBox(
              width: 300,
               child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(32),
                   boxShadow: [
                      BoxShadow(
                        color: Color(0xFF132C4A05),  
                        blurRadius: 16,                        
                        offset: Offset(0, 6),   
                        spreadRadius: 0               
                      )
                    ],
                 ),
                  child: TextField(
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFFFFFFFF),
                      prefixIcon: Icon(Icons.search,color: Color(0xFFAEAEAE),),
                      hintText: "Look for",hintStyle: GoogleFonts.poppins(color: Color(0xFFAEAEAE)),
                       enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide.none                  
                     ),
                     focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                       borderSide: BorderSide.none
                    )
                                  
                    ),
                  ),
               ),
             ),
             SizedBox(width: 20,),
             Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Color(0xFF8A19D6),
                borderRadius: BorderRadius.circular(14),
                 boxShadow: [
                      BoxShadow(
                        color: Color(0xFF132C4A05),  
                        blurRadius: 16,                        
                        offset: Offset(0, 6),   
                        spreadRadius: 0               
                      )
                  ],
              ),
              child: Icon(Icons.tune_outlined,color: Color(0xFFFFFFFF),),
             )

           ],
         ),
       SizedBox(height: 20,),
        CarouselSlider.builder(
        itemCount: curosellist.length, 
        itemBuilder: (context, index, realIndex){
          return Container(
         margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFFB66DFF),
                borderRadius: BorderRadius.circular(14),
                 boxShadow: [
                      BoxShadow(
                        color: Color(0xFF132C4A05),  
                        blurRadius: 16,                        
                        offset: Offset(0, 6),   
                        spreadRadius: 0               
                      )
                  ],
               ),
               child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(curosellist[index]['title'],
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)
                          ),),
                          SizedBox(height: 15,),
                          Text(curosellist[index]['subtitle'],
                          style: GoogleFonts.poppins(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFFFFFF)
                          ),),
                         SizedBox(height: 15,),
                          Container(
                            height: 42,
                            width: 130,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Color(0xFF8A19D6),
                      
                            ),
                            child:  Text(curosellist[index]['subname'],
                            style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                          ),),
                          )
                          
                        ],
                      ),
                    ),
                  ),
                  Image.asset(curosellist[index]['image'],
                  height: 230,
                    width: 230,
                    fit: BoxFit.cover,)               
                ],
               ),
          );
        },
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex=index;
            });
          },
      )),
      SizedBox(height: 5,),
      Center(
        child: SmoothPageIndicator(
          controller: PageController(initialPage:currentIndex), 
           count: 4,
           effect: WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            dotColor: Color(0xFFE3E1E8),
            spacing: 8,
            activeDotColor: Color(0xFF8A19D6)       
           ),
        ),
      ),
        SizedBox(height: 20,),
         Text("Statistics", style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF03314B),
              ),),
           SizedBox(height: 20,),
           Row(
            children: [
              Container(
                height: 120,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF8A19D6),         
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset("assets/images/barchart2.png"),
                       SizedBox(height: 5,),
                      Text("920", style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                       SizedBox(height: 5,),
                       Text("Produtos", style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                    ],
                  ),
                ),
              ),
                SizedBox(width: 20,),
               Container(
                height: 120,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF8A19D6),         
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset("assets/images/graph1.png"),
                       SizedBox(height: 5,),
                      Text("52", style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                       SizedBox(height: 5,),
                       Text("Sold", style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
               Container(
                height: 120,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF8A19D6),         
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset("assets/images/barchart1.png"),
                       SizedBox(height: 5,),
                      Text("9000", style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                      SizedBox(height: 5,),
                       Text("Profit", style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),),
                    ],
                  ),
                ),
              )
            ],
           ),
           SizedBox(height: 40,),
           Row(
            children: [
                 Text("Recent Messages", style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF03314B),
                      ),),
                      Spacer(),
                        Row(
                          children: [
                            Text("See More", style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF03314B),
                           ),),
                           SizedBox(width: 5,),
                           Container(
                            alignment: Alignment.center,
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFF8A19D6)),
                              color: Color(0xFF8A19D6),

                            ),
                            child: Icon(Icons.arrow_forward,color: Color(0xFFF8FAFC),size: 20,),
                           )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 85,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 48,
                            spreadRadius: 0,
                            color: Color(0xFF0000000A)

                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/homepage.png", height: 57, width: 57, fit: BoxFit.cover, ),
                            SizedBox(width: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                   Text("Cyclane", style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF03314B),
                                  ),),
                              SizedBox(height: 5,),
                                    Text("Subject: ...", style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF8CA1A9),
                                  ),),
                                ],
                              ),
                            ),
                          SizedBox(width: 150,),
                                 Text("1h", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF03314B),
                                ),),
                        
                        
                          ],
                        ),
                      ),
                    ),
                      SizedBox(height: 20,),
                    Container(
                      height: 85,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 48,
                            spreadRadius: 0,
                            color: Color(0xFF0000000A)

                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/homepage.png", height: 57, width: 57, fit: BoxFit.cover, ),
                            SizedBox(width: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                   Text("Beltrano", style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF03314B),
                                  ),),
                                  SizedBox(height: 5,),
                                    Text("Subject: ...", style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF8CA1A9),
                                  ),),
                                ],
                              ),
                            ),
                             SizedBox(width: 150,),
                                 Text("2h", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF03314B),
                                ),),                      
                        
                          ],
                        ),
                      ),
                    ),     
                          
      ],),
    ),

    );
  }
}