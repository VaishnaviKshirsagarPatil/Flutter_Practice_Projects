import 'package:flutter/material.dart';

class MenuItemModel {
  final IconData icon;
  final String label;
  final bool isLogout;

  MenuItemModel({
    required this.icon,
    required this.label,
    this.isLogout = false,
  });
}
