import 'package:flutter/material.dart';
import '../global.dart'; // Import global data

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredLecturers = [];

  @override
  void initState() {
    super.initState();
    filteredLecturers = registeredLecturers;
  }

  void searchLecturers(String query) {
    setState(() {
      filteredLecturers = registeredLecturers
          .where((lecturer) =>
              lecturer['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat with Lecturers"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              onChanged: searchLecturers,
              decoration: const InputDecoration(
                labelText: "Search Lecturers",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredLecturers.length,
                itemBuilder: (context, index) {
                  final lecturer = filteredLecturers[index];
                  return ListTile(
                    title: Text(lecturer['name']!),
                    subtitle: Text(lecturer['email']!),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("Start chatting with ${lecturer['name']}"),
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
