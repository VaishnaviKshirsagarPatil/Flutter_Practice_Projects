import 'package:dogpet_app/widgets/custom_card.dart';
import 'package:dogpet_app/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GroomingScreen extends StatelessWidget {
  const GroomingScreen({super.key});

  final List<Map<String, String>> grromingList = const [
    {'image': 'assets/images/grooming1.jpg', 'text': 'Bathing & Drying'},
    {'image': 'assets/images/grooming2.png', 'text': 'Hair Triming'},
    {'image': 'assets/images/grooming3.jpg', 'text': 'Nail Trimming'},
    {'image': 'assets/images/grooming4.jpg', 'text': 'Ear Cleaning'},
    {'image': 'assets/images/grooming5.png', 'text': 'Teeth Brushing'},
    {'image': 'assets/images/grooming6.jpg', 'text': 'Flea Treatment'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 90),
                Text(
                  'Grooming',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomCard(
              color: Color.fromRGBO(245, 146, 69, 1),
              title: '60% OFF',
              subtitle: 'On hair & spa treatment',
              trailing: 'assets/images/grooming_card.jpg',
              textColor: Colors.white,
              subtitleColor: Colors.white,
              titleSize: 24,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Services',
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
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: grromingList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 3.7 / 4,
                ),
                itemBuilder: (context, index) => groomingCard(
                  image: grromingList[index]['image']!,
                  text: grromingList[index]['text']!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget groomingCard({required String image, required String text}) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 16,
            offset: Offset(0, 8),
            spreadRadius: -4,
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              height: 105,
              width: 120,
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
