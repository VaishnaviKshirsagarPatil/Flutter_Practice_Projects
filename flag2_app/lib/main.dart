import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlagCollage(),
  ));
}

class FlagCollage extends StatelessWidget {
  const FlagCollage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/g1.jpg', fit: BoxFit.cover),
                ),
                Expanded(
                  child: Image.asset('assets/images/g2.jpg', fit: BoxFit.cover),
                ),
                Expanded(
                  child: Image.asset('assets/images/g3.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
