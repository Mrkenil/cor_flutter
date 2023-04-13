import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/netimage.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

Color addnormalColer = Colors.green;
Color removenormalColer = Colors.grey;
Color normalColer = Colors.grey;

List<Map> image = [
  {
    'img': (i1),
    'imga': "",
  },
  {
    'img': (i2),
    'imga': "",
  },
  {
    'img': (i3),
    'imga': "",
  },
  {
    'img': (i4),
    'imga': "",
  },
  {
    'img': (i5),
    'imga': "",
  },
  {
    'img': (i6),
    'imga': "",
  },
  {
    'img': (i7),
    'imga': "",
  },
  {
    'img': (i8),
    'imga': "",
  },
];
BoxDecoration button = BoxDecoration(
  borderRadius: BorderRadiusDirectional.circular(20),
  border: Border.all(
    color: Colors.black,
  ),
  color: Colors.white,
);
TextStyle bodyT = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 22,
);

class _homePageState extends State<homePage> {
  String StoryImage = i1;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "instagram",
          style: TextStyle(
              fontSize: 21,
              color: Colors.purpleAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: normalColer,
                        width: 5,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(StoryImage),
                      radius: 100,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: image
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              StoryImage = e['img'];
                              normalColer = removenormalColer;
                            });
                          },
                          child: Container(
                            height: h * 0.4,
                            width: w * 0.9,
                            margin: EdgeInsets.all(16),
                            child: Image.network(
                              e['img'],
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    StoryImage = "";
                    normalColer = removenormalColer;
                  });
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 0.5,
                  alignment: Alignment.center,
                  decoration: button,
                  child: Text(
                    "Remove Story",
                    style: bodyT,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: Colors.pinkAccent,
    );
  }
}
