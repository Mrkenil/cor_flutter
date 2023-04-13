import 'package:flutter/material.dart';

import '../../utils/image.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  String? name;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      body: Align(
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
              child: Image.asset(
                "assets/images/startbg/img.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment(0, 0.7),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('page2');
                },
                child: Container(
                  height: h * 0.06,
                  width: w * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xff1e005c).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff200041),
                      width: 2,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
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
