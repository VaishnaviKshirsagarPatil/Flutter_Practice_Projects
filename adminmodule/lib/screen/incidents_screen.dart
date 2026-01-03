import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IncidentsScreen extends StatelessWidget {
  const IncidentsScreen({super.key});

  Future<void> markResolved(String docId) async {
    await FirebaseFirestore.instance.collection('incidents').doc(docId).update({
      'status': 'Resolved',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Incident Reports', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        Expanded(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('incidents').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final docs = snapshot.data!.docs;
              if (docs.isEmpty) return const Text('No incidents reported.');

              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  final data = docs[index].data();
                  return Card(
                    child: ListTile(
                      leading: Image.network(data['image'] ?? '', width: 80, fit: BoxFit.cover),
                      title: Text(data['description'] ?? ''),
                      subtitle: Text('Status: ${data['status']}'),
                      trailing: data['status'] != 'Resolved'
                          ? ElevatedButton(
                              onPressed: () => markResolved(docs[index].id),
                              child: const Text('Resolve'),
                            )
                          : const Icon(Icons.check_circle, color: Colors.green),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
