import 'package:flutter/material.dart';

class RegisteredCoursesScreen extends StatefulWidget {
  const RegisteredCoursesScreen({super.key});

  @override
  State<RegisteredCoursesScreen> createState() =>
      _RegisteredCoursesScreenState();
}

class _RegisteredCoursesScreenState extends State<RegisteredCoursesScreen> {
  // Mock list of registered courses
  final List<Map<String, dynamic>> _registeredCourses = [
    {
      "code": "CS101",
      "name": "Introduction to Computer Science",
      "creditHours": 3,
      "theory": "Yes",
      "practical": "No"
    },
    {
      "code": "MATH102",
      "name": "Calculus I",
      "creditHours": 4,
      "theory": "Yes",
      "practical": "No"
    },
    {
      "code": "PHY103",
      "name": "Physics I",
      "creditHours": 3,
      "theory": "Yes",
      "practical": "Yes"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registered Courses"),
      ),
      body: _registeredCourses.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "No courses registered yet.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to course registration screen
                      Navigator.pushNamed(context, '/courseRegistration');
                    },
                    child: const Text("Register Courses"),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _registeredCourses.length,
              itemBuilder: (context, index) {
                final course = _registeredCourses[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("${course["code"]}: ${course["name"]}"),
                    subtitle: Text(
                      "Credits: ${course["creditHours"]}, Theory: ${course["theory"]}, Practical: ${course["practical"]}",
                    ),
                  ),
                );
              },
            ),
    );
  }
}
