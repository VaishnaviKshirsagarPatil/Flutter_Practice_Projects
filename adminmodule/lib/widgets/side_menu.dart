import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const SideMenu({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'icon': Icons.dashboard, 'label': 'Dashboard'},
      {'icon': Icons.add_location, 'label': 'Content Management'},
      {'icon': Icons.warning, 'label': 'Alerts'},
      {'icon': Icons.report, 'label': 'Incidents'},
      {'icon': Icons.notifications, 'label': 'Notifications'},
    ];

    return Container(
      width: 250,
      color: const Color.fromARGB(255, 248, 116, 67),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            'Admin Panel',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          for (int i = 0; i < menuItems.length; i++)
            GestureDetector(
              onTap: () => onItemSelected(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: i == selectedIndex ? Colors.orange[600] : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      menuItems[i]['icon'] as IconData,
                      color: i == selectedIndex ? Colors.white : Colors.white70,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      menuItems[i]['label'] as String,
                      style: GoogleFonts.poppins(
                        color: i == selectedIndex ? Colors.white : Colors.white70,
                        fontWeight: i == selectedIndex ? FontWeight.bold : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
