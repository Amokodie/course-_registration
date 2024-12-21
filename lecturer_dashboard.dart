import 'package:flutter/material.dart';
import 'upload_results_page.dart';
import 'upload_learning_materials_page.dart';
import 'chat_with_students_page.dart';
import '../global.dart'; // Import global data

class LecturerDashboard extends StatelessWidget {
  const LecturerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecturer Dashboard - ${currentUser['name']}"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text("Upload Results"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UploadResultsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Upload Learning Materials"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const UploadLearningMaterialsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Chat with Students"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChatWithStudentsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
