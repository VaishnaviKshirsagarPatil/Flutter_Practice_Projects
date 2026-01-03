import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Welcome to Fort Admin Dashboard',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}
