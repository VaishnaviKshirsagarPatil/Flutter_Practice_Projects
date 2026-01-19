import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  final List<Map<String, dynamic>> historyList = const [
    {
      'text': 'Obedience Courses',
      'subText': 'By Jhon Smith',
      'rating': '4.9 (335)',
      'image': 'assets/images/history1.jpg',
    },
    {
      'text': 'Specialty Classes & Workshops',
      'subText': 'By Duke Fuzzington',
      'rating': '5.0 (500)',
      'image': 'assets/images/history2.jpg',
    },
    {
      'text': 'Puppy Kinderganten and Playgroups',
      'subText': 'By Sir Fluffington',
      'rating': '5.0 (500)',
      'image': 'assets/images/history3.jpg',
    },
    {
      'text': 'Canine Good Citizen Test',
      'subText': 'By Baron Fuzzypaws',
      'rating': '4.8 (220)',
      'image': 'assets/images/history4.jpg',
    },
    {
      'text': 'Theraphy Dogs',
      'subText': 'By Duke Fuzzington',
      'rating': '5.0 (500)',
      'image': 'assets/images/history5.jpg',
    },
    {
      'text': 'Socialization',
      'subText': 'By Jhon Duke',
      'rating': '4.9 (335)',
      'image': 'assets/images/history6.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              children: [
                Container(
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
                const SizedBox(width: 90),
                Text(
                  'Training',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: historyList.length,
                itemBuilder: (context, index) {
                  return doctorCard(index: index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget doctorCard({required int index}) {
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image.asset(
                  height: 90,
                  width: 90,
                  historyList[index]['image'],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 25,
                  top: 25,
                  child: Icon(
                    Icons.play_circle_outline_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  historyList[index]['text'],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  historyList[index]['subText'],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      size: 20,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    Text(
                      historyList[index]['rating'],
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5,
                        color: Color.fromRGBO(167, 168, 172, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
