import 'package:flutter/material.dart';
import '../global.dart'; // Import global data

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final studentResults = results
        .where((result) => result['studentId'] == currentUser['index'])
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Results"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: studentResults.isEmpty
            ? const Center(
                child: Text(
                  "No results uploaded yet.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            : ListView.builder(
                itemCount: studentResults.length,
                itemBuilder: (context, index) {
                  final result = studentResults[index];
                  return Card(
                    child: ListTile(
                      title: Text("Course: ${result['courseName']}"),
                      subtitle: Text("Grade: ${result['grade']}"),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
