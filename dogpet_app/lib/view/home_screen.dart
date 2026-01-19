import 'package:dogpet_app/view/grooming_screen.dart';
import 'package:dogpet_app/widgets/category_service_options.dart';
import 'package:dogpet_app/widgets/custom_card.dart';
import 'package:dogpet_app/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Image.asset('assets/images/sarah.png'),
                  const SizedBox(width: 10),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello, Sarah\n',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        TextSpan(
                          text: 'Good Morning!',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(194, 195, 204, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.notifications_outlined, size: 28),
                ],
              ),
              const SizedBox(height: 20),
              CustomTextfeild(
                text: 'search',
                suffix: Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              const SizedBox(height: 20),
              CustomCard(
                color: Colors.white,
                title: 'In Love With Pets?',
                subtitle: 'Get all what you need for them',
                trailing: 'assets/images/home_card1.jpg',
                textColor: Colors.black,
                subtitleColor: Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1,
                      letterSpacing: 0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color.fromRGBO(182, 183, 188, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryServiceOptions(
                    image: 'assets/images/category1.png',
                    text: 'Veterinary',
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GroomingScreen(),
                        ),
                      );
                    },
                    child: CategoryServiceOptions(
                      image: 'assets/images/category2.png',
                      text: 'Grooming',
                      color: Colors.black,
                    ),
                  ),
                  CategoryServiceOptions(
                    image: 'assets/images/category3.png',
                    text: 'Pet Store',
                    color: Colors.black,
                  ),
                  CategoryServiceOptions(
                    image: 'assets/images/category4.png',
                    text: 'Training',
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Event',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 1,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              eventCard(
                image: 'assets/images/event.png',
                text: 'Find and Join in Special Events For Your Pets!',
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Community',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 1,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              eventCard(
                image: 'assets/images/community.png',
                text: 'Connect and share with communities! ',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget eventCard({required String image, required String text}) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.5,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 17),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "See more",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(height: 90, width: 90, image, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
