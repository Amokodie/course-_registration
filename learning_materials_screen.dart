import 'package:flutter/material.dart';
import '../global.dart'; // Import global data

class LearningMaterialsScreen extends StatelessWidget {
  const LearningMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Materials"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: learningMaterials.isEmpty
            ? const Center(
                child: Text(
                  "No learning materials available.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            : ListView.builder(
                itemCount: learningMaterials.length,
                itemBuilder: (context, index) {
                  final material = learningMaterials[index];
                  final title =
                      material['title'] ?? 'No Title'; // Default value
                  final uploadedBy = material['uploadedBy'] ??
                      'Unknown Uploader'; // Default value

                  return Card(
                    child: ListTile(
                      title: Text(title),
                      subtitle: Text("Uploaded by: $uploadedBy"),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
