import 'package:flutter/material.dart';
import 'package:login_practice/pages/home_page.dart';
import 'package:login_practice/pages/join_page.dart';
import 'package:login_practice/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildThemeData(),
      initialRoute: "/join",
      // 페이지 이동을 위한 routes
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/join": (context) => JoinPage(),
      },
    );
  }

  ThemeData _buildThemeData() {
    return ThemeData(
      iconTheme: IconThemeData(color: Colors.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}
