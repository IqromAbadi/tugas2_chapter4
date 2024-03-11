import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_chapter4/pages/page1.dart';
import 'package:tugas2_chapter4/pages/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        "Page 2",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      ),
    ),
  );
}

Body(context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Page1();
                    },
                  ),
                );
              },
              child: Icon(Icons.keyboard_arrow_left),
            ),
            SizedBox(width: 5),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Page3();
                    },
                  ),
                );
                Get.defaultDialog(
                    title: "INI ADALAH DIALOG",
                    middleText: "Apakah ingin masuk ke page 3?",
                    textCancel: "batal",
                    onCancel: () {
                      Get.back();
                    },
                    textConfirm: "oke",
                    onConfirm: () {
                      Get.to(Page3());
                    });
              },
              tooltip: "Increment",
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    ),
  );
}
