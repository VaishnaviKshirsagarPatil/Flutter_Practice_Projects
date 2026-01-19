import 'package:flutter/material.dart';
class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification page"),
        backgroundColor: Colors.deepPurple[300],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("This is Notification Page..."),
      ),
    );
  }
}
