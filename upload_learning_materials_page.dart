import 'package:flutter/material.dart';

class UploadLearningMaterialsScreen extends StatelessWidget {
  const UploadLearningMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Learning Materials"),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book, size: 80, color: Colors.blue),
              SizedBox(height: 16),
              Text(
                "Learning material upload functionality coming soon.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
