import 'package:flutter/material.dart';
import '../global.dart'; // Import global data
import 'results_screen.dart';
import 'library_screen.dart';
import 'learning_materials_screen.dart';
import 'chat_screen.dart';
import 'course_registration_screen.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Dashboard - ${currentUser['name']}"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text("View My Results"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResultsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Access Library"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LibraryScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Learning Materials"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LearningMaterialsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Chat with Lecturers"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Course Registration"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CourseRegistrationScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
