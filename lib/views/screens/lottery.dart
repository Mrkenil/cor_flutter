import 'dart:math';

import 'package:ch9_2/utils/ver.dart';
import 'package:flutter/material.dart';

class lot extends StatefulWidget {
  const lot({Key? key}) : super(key: key);

  @override
  State<lot> createState() => _lotState();
}

class _lotState extends State<lot> {
  int col = 1;
  int a = 0;
  int b = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    Random C = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App"),
        centerTitle: true,
        backgroundColor: Colors.primaries[col],
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  col = C.nextInt(18);
                });
              },
              icon: Icon(Icons.cached))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 160,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.primaries[col],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.primaries[col].shade900,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.primaries[col].shade400,
                  ),
                  alignment: Alignment.center,
                  child: Text("$a"),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.primaries[col].shade900,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.primaries[col].shade400,
                  ),
                  alignment: Alignment.center,
                  child: Text("$b"),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.primaries[col].shade900,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.primaries[col].shade400,
                  ),
                  alignment: Alignment.center,
                  child: Text("$c"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a = C.nextInt(10);
                b = C.nextInt(10);
                c = C.nextInt(10);
              });
            },
            child: Container(
              height: 60,
              width: 120,
              alignment: Alignment.center,
              child: Text(
                "Get Lottery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.primaries[col],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: Colors.primaries[col].shade900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
