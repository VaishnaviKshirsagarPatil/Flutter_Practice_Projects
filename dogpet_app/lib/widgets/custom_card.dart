import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final String title;
  final String? subtitle;
  final String trailing;
  final Color textColor;
  final Color subtitleColor;
  final double titleSize;

  const CustomCard({
    super.key,
    required this.color,
    required this.title,
    this.subtitle,
    required this.trailing,
    required this.textColor,
    required this.subtitleColor,
    this.titleSize = 17,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: titleSize,
                    color: textColor,
                  ),
                ),
                Text(
                  subtitle!,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: subtitleColor,
                  ),
                ),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              height: 90,
              width: 90,
              trailing,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
