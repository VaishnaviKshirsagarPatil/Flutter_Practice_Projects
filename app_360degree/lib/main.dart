import 'package:app_360degree/360_viiew_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fort 360 Viewer',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Fort360GalleryScreen(),
    );
  }
}
