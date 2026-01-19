import 'package:flutter/material.dart';
class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.deepPurple[300],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("F I R S T P A G E"),
      ),
    );
  }
}
