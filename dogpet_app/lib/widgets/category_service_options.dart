import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryServiceOptions extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  const CategoryServiceOptions({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 13),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: color,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 1,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
