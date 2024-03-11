import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_chapter4/pages/page2.dart';
import 'package:tugas2_chapter4/pages/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
        "Page 3",
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
                      return Page2();
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
                      return Page4();
                    },
                  ),
                );
                Get.defaultDialog(
                    title: "INI ADALAH DIALOG",
                    middleText: "Apakah ingin masuk ke page 4?",
                    textCancel: "batal",
                    onCancel: () {
                      Get.back();
                    },
                    textConfirm: "oke",
                    onConfirm: () {
                      Get.to(Page4());
                    });
              },
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    ),
  );
}
