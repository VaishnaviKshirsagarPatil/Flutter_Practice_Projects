import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  final TextEditingController alertController = TextEditingController();

  Future<void> addAlert() async {
    if (alertController.text.isEmpty) return;
    await FirebaseFirestore.instance.collection('alerts').add({
      'message': alertController.text,
      'timestamp': FieldValue.serverTimestamp(),
    });
    alertController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Alert Added!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Traffic / Disaster Alerts', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        TextField(
          controller: alertController,
          decoration: const InputDecoration(
            labelText: 'Enter alert message',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: addAlert,
          icon: const Icon(Icons.send),
          label: const Text('Send Alert'),
        ),
      ],
    );
  }
}
