import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tugas2_chapter4/pages/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
