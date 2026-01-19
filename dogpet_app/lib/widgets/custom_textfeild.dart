import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  final String text;
  final Widget? suffix;
  const CustomTextfeild({super.key, required this.text, this.suffix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        cursorColor: Color.fromRGBO(245, 146, 69, 1),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Color.fromRGBO(194, 195, 204, 1)),
          suffixIcon: suffix,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: Color.fromRGBO(250, 200, 162, 1),
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ),
      ),
    );
  }
}
