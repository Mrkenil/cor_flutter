import 'dart:math';

import 'package:flutter/material.dart';

class color extends StatefulWidget {
  const color({Key? key}) : super(key: key);

  @override
  State<color> createState() => _colorState();
}

class _colorState extends State<color> {
  @override
  Widget build(BuildContext context) {
    Random r = Random();
    int a = r.nextInt(14);
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Color Palette\n   Generator",
                style: TextStyle(
                  color: Color(0xff3BB3f9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: h * 0.6,
                width: w * 0.2,
                alignment: Alignment.center,
                child: Column(
                  children: List.generate(
                    5,
                    (index) => Expanded(
                      child: Container(
                        color: Colors.primaries[index + a],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: h * 0.1,
                  width: w * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      color: Color(0xff3BB3F9),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      color: Color(0xff3BB3F9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
