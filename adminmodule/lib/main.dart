import 'package:adminmodule/screen/add_fort_screen.dart';
import 'package:adminmodule/screen/alert_screen.dart';
import 'package:adminmodule/screen/incidents_screen.dart';
import 'package:adminmodule/screen/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

void main() {
  runApp(const FortAdminApp());
}

class FortAdminApp extends StatelessWidget {
  const FortAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fort Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: const AdminLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AdminLayout extends StatefulWidget {
  const AdminLayout({super.key});

  @override
  State<AdminLayout> createState() => _AdminLayoutState();
}

class _AdminLayoutState extends State<AdminLayout> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    AddFortScreen(),
    AlertsScreen(),
    IncidentsScreen(),
    NotificationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            selectedIndex: selectedIndex,
            onItemSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[100],
              child: pages[selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
