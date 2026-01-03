import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final TextEditingController messageController = TextEditingController();

  Future<void> sendNotification() async {
    if (messageController.text.isEmpty) return;
    await FirebaseFirestore.instance.collection('notifications').add({
      'message': messageController.text,
      'timestamp': FieldValue.serverTimestamp(),
    });
    messageController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Notification Sent!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Send Notifications', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        TextField(
          controller: messageController,
          decoration: const InputDecoration(
            labelText: 'Notification Message',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: sendNotification,
          icon: const Icon(Icons.notifications),
          label: const Text('Send Notification'),
        ),
      ],
    );
  }
}
