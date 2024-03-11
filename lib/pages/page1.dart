import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_chapter4/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(),
            Expanded(
              child: Body(context),
            )
          ],
        ),
      ),
    );
  }
}

AppBar() {
  return Container(
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.red,
    ),
    child: Center(
      child: Text(
        "Page 1",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      ),
    ),
  );
}

Body(context) {
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Page2();
            },
          ),
        );
        Get.snackbar(
          "Selamat datang di Page 2",
          "Ini adalag page 2",
          animationDuration: Duration(seconds: 1),
          duration: Duration(seconds: 3),
        );
      },
      child: Icon(Icons.keyboard_arrow_right),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
}
