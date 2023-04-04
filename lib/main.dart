import 'package:flutter/material.dart';
import 'package:manager_app/screens/login/login_screen.dart';

void main() {
  runApp(const ManagerApp());
}

class ManagerApp extends StatelessWidget {
    const ManagerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

