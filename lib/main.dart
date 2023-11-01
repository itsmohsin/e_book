import 'package:e_book/config/themes.dart';
import 'package:e_book/pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-BOOK',
      theme: lightTheme,
      home: const WelcomePage(),
    );
  }
}
