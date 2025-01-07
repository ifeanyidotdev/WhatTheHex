import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_the_hex/color_scheme.dart';

void main() {
  runApp(const WhatTheHexApp());
}

class WhatTheHexApp extends StatelessWidget {
  const WhatTheHexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatTheHexScreen(),
    );
  }
}

class WhatTheHexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: blackColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "kasun.io",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        CupertinoIcons.arrow_clockwise,
                        color: blackColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: const Text(
                    "#",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "WhatTheHex?!",
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "#227BFE",
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Rounded corners
                          borderSide: const BorderSide(
                            color: blackColor, // Border color
                            width: 1.5, // Border width
                          ),
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        suffixIcon: const Icon(
                          Icons.directions,
                          color: blackColor,
                        )),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.ellipses_bubble_fill,
                        color: blackColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Type or pick your color and press enter ")
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 3,
                  child: Container(
                    height: 290,
                    width: 375,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: blueColor,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shadow Blue',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Closest Name",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          _colorOptionns(
                              title: "RGBA", content: "rgba(77, 81, 101, 1)"),
                          const SizedBox(height: 10),
                          _colorOptionns(
                              title: "CSS",
                              content: "--color-clear-blue: #227BFE;"),
                          const SizedBox(height: 10),
                          _colorOptionns(
                              title: "SCSS",
                              content: "\$color-clear-blue: #227BFE;"),
                          const SizedBox(height: 20),
                          Container(
                            width: 340,
                            height: 40,
                            decoration: BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.square_on_square,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "GENERATE SHADES",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Made with 🖤 by Kasun Peiris",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chevron_left,
              color: blueColor,
              size: 30,
            ),
            label: "back",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chevron_right,
              color: Colors.grey.shade500,
              size: 30,
            ),
            label: "forward",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_arrow_up,
              color: blueColor,
              size: 30,
            ),
            label: "share",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
              color: blueColor,
              size: 30,
            ),
            label: "book",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_on_square,
              color: blueColor,
              size: 30,
            ),
            label: "copy",
          )
        ],
      ),
    );
  }

  Widget _colorOptionns({required String title, required String content}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
