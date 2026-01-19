import 'dart:developer';

import 'package:dogpet_app/view/cart_screen.dart';
import 'package:dogpet_app/view/history_screen.dart';
import 'package:dogpet_app/view/home_screen.dart';
import 'package:dogpet_app/view/profile_screen.dart';
import 'package:dogpet_app/view/service_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages(currentSelectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentSelectedIndex,

        selectedItemColor: const Color(0XFFF59245),
        unselectedItemColor: const Color(0xFFC2C3CC),

        onTap: (value) {
          log("Index: $value");
          currentSelectedIndex = value;
          setState(() {});
        },

        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, size: 27),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border_outlined, size: 27),
            label: "Service",
          ),

          /// ⭐ SHOP in Circle Badge ⭐
          BottomNavigationBarItem(
            icon: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0XFFF59245),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Shop",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.history_rounded, size: 27),
            label: "History",
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.person_3_outlined, size: 27),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  /// PAGE ROUTING
  Widget pages(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return ServiceScreen();
      case 2:
        return CartScreen();
      case 3:
        return HistoryScreen();
      case 4:
        return ProfileScreen();
      default:
        return Container();
    }
  }
}
