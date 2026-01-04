// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main(){
  runApp(Screen8());
}
class Screen8 extends StatelessWidget {
   Screen8({super.key});
  double screenWidth=0;
  double screenHeight=0;

  @override
  Widget build(BuildContext context) {
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(  
        title: Text(" Column Layout",
        style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.amber,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}