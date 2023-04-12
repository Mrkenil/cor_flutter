import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/dice_image.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int Total = 0;
  int a = 0, b = 0;

  Random R = Random();

  @override
  Widget build(BuildContext context) {
    a = R.nextInt(6) + 1;
    b = R.nextInt(6) + 1;

    Total = a + b;

    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: Text(
                "Total Amount : ${a + b}",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            Spacer(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset("$image$a.png"),
                    height: 140,
                    width: 140,
                  ),
                  Container(
                    child: Image.asset("$image$b.png"),
                    height: 140,
                    width: 140,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text(
                "Roll Dice",
                style: TextStyle(
                  fontSize: 22,
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
