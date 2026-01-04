import 'package:column_layout/screen1.dart';
import 'package:column_layout/screen2.dart';
import 'package:column_layout/screen3.dart';
import 'package:column_layout/screen4.dart';
import 'package:column_layout/screen5.dart';
import 'package:column_layout/screen6.dart';
import 'package:column_layout/screen7.dart';
import 'package:column_layout/screen8.dart';
import 'package:column_layout/screen9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Screen9(),
    );
  }
}
