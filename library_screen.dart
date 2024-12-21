import 'package:flutter/material.dart';
import '../global.dart'; // Import global data

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: libraryMaterials.isEmpty
            ? const Center(
                child: Text(
                  "No books uploaded yet.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            : ListView.builder(
                itemCount: libraryMaterials.length,
                itemBuilder: (context, index) {
                  final book = libraryMaterials[index];
                  return Card(
                    child: ListTile(
                      title: Text(book['title']!),
                      subtitle: Text("Author: ${book['author']}"),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
