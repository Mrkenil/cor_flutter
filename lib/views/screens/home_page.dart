import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int sec = 0;
  int min = 0;
  int hw = 0;
  bool a = true;

  @override
  Widget build(BuildContext context) {
    double seca = (pi / 30 * sec);
    double mina = (pi / 30 * min);
    double hwa = (pi / 6 * hw) + (pi / 45 * mina);
    Time() {
      setState(() {
        Future.delayed(Duration(seconds: 0), () {
          DateTime now = DateTime.now();
          sec = now.second;
          min = now.minute;
          hw = now.hour;
          Time();
        });
      });
    }

    Time();
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Digi Cloke"),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: h,
              width: w,
              child: Image.network(
                "https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: h * 0.3,
              width: h * 0.3,
              child: CircularProgressIndicator(
                color: Colors.green,
                value: sec / 60,
                strokeWidth: 10,
              ),
            ),
            Container(
              height: h * 0.25,
              width: h * 0.25,
              child: CircularProgressIndicator(
                color: Colors.blue,
                value: min / 60,
                strokeWidth: 10,
              ),
            ),
            Container(
              height: h * 0.2,
              width: h * 0.2,
              child: CircularProgressIndicator(
                color: Colors.red,
                value: hw / 24,
                strokeWidth: 10,
              ),
            ),
            Container(
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              alignment: Alignment(0, 0),
            ),
            // second
            Transform.rotate(
              angle: seca,
              child: Container(
                child: Container(
                  height: 120,
                  width: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment(0, -0.2),
              ),
            ),
            // minut
            Transform.rotate(
              angle: mina,
              child: Container(
                child: Container(
                  height: 100,
                  width: 5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment(0, -0.16),
              ),
            ),
            // hower
            Transform.rotate(
              angle: hwa,
              child: Container(
                child: Container(
                  height: 80,
                  width: 5,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment(0, -0.1),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "$hw : $min : $sec",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
