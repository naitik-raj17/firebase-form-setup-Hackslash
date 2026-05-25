import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/form_screen.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  // Note: For this to work, you must add your google-services.json (Android)
  // or GoogleService-Info.plist (iOS) to the respective platform folders.
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Form Demo',
      debugShowCheckedModeBanner: false,
      // Modern Dark Theme
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      home: const FormScreen(),
    );
  }
}
