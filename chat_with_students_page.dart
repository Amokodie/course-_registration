import 'package:flutter/material.dart';
import '../global.dart'; // Import global data

class ChatWithStudentsScreen extends StatefulWidget {
  const ChatWithStudentsScreen({super.key});

  @override
  State<ChatWithStudentsScreen> createState() => _ChatWithStudentsScreenState();
}

class _ChatWithStudentsScreenState extends State<ChatWithStudentsScreen> {
  final TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredStudents = [];

  @override
  void initState() {
    super.initState();
    filteredStudents = registeredStudents; // Initialize with all students
  }

  void searchStudents(String query) {
    setState(() {
      filteredStudents = registeredStudents
          .where((student) =>
              student['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat with Students"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              onChanged: searchStudents,
              decoration: const InputDecoration(
                labelText: "Search Students",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredStudents.length,
                itemBuilder: (context, index) {
                  final student = filteredStudents[index];
                  return ListTile(
                    title: Text(student['name']!),
                    subtitle: Text("Index: ${student['index']}"),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("Start chatting with ${student['name']}"),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
