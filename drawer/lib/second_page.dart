import 'package:flutter/material.dart';
class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        backgroundColor: Colors.deepPurple[300],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("S E C O N D P A G E"),
      ),
    );
  }
}
