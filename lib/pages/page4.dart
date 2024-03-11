import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_chapter4/pages/page3.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page1State();
}

class _Page1State extends State<Page4> {
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
        "Page 4",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      ),
    ),
  );
}

Body(context) {
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.all(10),
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
                      return Page3();
                    },
                  ),
                );
              },
              child: Icon(Icons.keyboard_arrow_left),
            ),
            SizedBox(width: 5),
            FloatingActionButton(
              onPressed: () {
                Get.bottomSheet(
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.red[100],
                      child: Center(
                        child: ListView(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Save"),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Icon(Icons.add_circle),
            ),
          ],
        ),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
}
