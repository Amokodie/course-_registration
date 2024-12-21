// Required for kIsWeb
import 'package:flutter/material.dart';
import 'auth/signup_screen.dart'; // Import the SignUpScreen

Future<void> main() async {
  // Ensures that Flutter widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Run the Flutter app
  runApp(const UWSEApp());
}

class UWSEApp extends StatelessWidget {
  const UWSEApp({super.key}); // Proper constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UWSE_TRACKER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: const SignUpScreen(), // **Set the SignUpScreen as the initial screen**
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}
