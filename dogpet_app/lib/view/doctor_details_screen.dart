import 'package:dogpet_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final String image;
  final String text;
  final String subText;
  final String distance;
  const DoctorDetailsScreen({
    super.key,
    required this.image,
    required this.text,
    required this.subText,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      body: Column(
        children: [
          const SizedBox(height: 45),
          Row(
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Color.fromRGBO(245, 146, 69, 1),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(width: 90),
              Text(
                'Veterinary',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                height: 160,
                width: 320,
                image,
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.7),
              ),
            ),
          ),
          Container(
            height: 528,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.black,
                    height: 1,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromRGBO(163, 163, 165, 1),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _infoBox("Experience", "11 years"),
                    _infoBox("Price", "\$250"),
                    _infoBox("Location", distance),
                  ],
                ),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "About",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "$text is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a professional...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(149, 149, 149, 1),
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Text(
                      "Available Days",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 18,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "November, 2025",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _dayChip("Fri, 6", false),
                      _dayChip("Sat, 7", false),
                      _dayChip("Sun, 8", true),
                      _dayChip("Mon, 9", false),
                      _dayChip("Tue, 10", true),
                      _dayChip("Wed, 11", false),
                      _dayChip("Thu, 12", true),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Available Time",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _timeChip("09.00", true),
                    _timeChip("15.00", false),
                    _timeChip("19.00", false),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 219, 193, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(height: 20, 'assets/images/map.png'),
                      const SizedBox(width: 5),
                      Text(
                        "See Location",
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(163, 97, 46, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                CustomButton(text: 'Book Now'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dayChip(String text, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
      decoration: BoxDecoration(
        color: selected
            ? const Color.fromRGBO(245, 146, 69, 1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: selected
              ? Colors.transparent
              : Color.fromRGBO(245, 146, 69, 1),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _timeChip(String time, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      decoration: BoxDecoration(
        color: selected
            ? const Color.fromRGBO(245, 146, 69, 1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: selected
              ? Colors.transparent
              : Color.fromRGBO(245, 146, 69, 1),
        ),
      ),
      child: Text(
        time,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _infoBox(String title, String value) {
    return Container(
      width: 95,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(31, 32, 41, 1),
              height: 1,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ],
      ),
    );
  }
}
