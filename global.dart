// global.dart

// Shared data across the app
List<Map<String, String>> registeredStudents = [];
List<Map<String, String>> registeredLecturers = [];
Map<String, String> currentUser = {};

// Results data
List<Map<String, String>> results = [
  {'studentId': '12345', 'courseName': 'Mathematics', 'grade': 'A'},
  {'studentId': '12345', 'courseName': 'Science', 'grade': 'B'},
  {'studentId': '67890', 'courseName': 'History', 'grade': 'A'},
];

// Library materials
List<Map<String, String>> libraryMaterials = [
  {'title': 'Flutter for Beginners', 'author': 'John Doe'},
  {'title': 'Advanced Dart', 'author': 'Jane Smith'},
];

// Learning materials
List<Map<String, String>> learningMaterials = [];

// Chat messages
List<Map<String, dynamic>> chats = [];

// Registered courses
// This structure is for temporary (non-persistent) storage. Use SQLite for permanent storage.
List<Map<String, dynamic>> registeredCourses = []; // Stores registered courses

/// Example Structure for `registeredCourses`
/// {
///   'studentId': '12345',
///   'code': 'CS101',
///   'name': 'Introduction to Climate Services',
///   'creditHours': 3,
///   'theory': '3',
///   'practical': '0',
/// }
