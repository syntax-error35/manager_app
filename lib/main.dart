import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manager_app/screens/login/login_screen.dart';
import 'package:manager_app/screens/user_list/user_list_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  runApp(const ManagerApp());
}

class ManagerApp extends StatelessWidget {
    const ManagerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

