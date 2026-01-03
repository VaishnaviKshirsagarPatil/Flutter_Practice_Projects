import 'package:flutter/material.dart';
import 'package:flutterappbar_code/problem1.dart';
import 'package:flutterappbar_code/problem10.dart';
import 'package:flutterappbar_code/problem2.dart';
import 'package:flutterappbar_code/problem3.dart';
import 'package:flutterappbar_code/problem4.dart';
import 'package:flutterappbar_code/problem5.dart';
import 'package:flutterappbar_code/problem6.dart';
import 'package:flutterappbar_code/problem7.dart';
import 'package:flutterappbar_code/problem8.dart';
import 'package:flutterappbar_code/problem9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Problem10(),
    );
  }
}
