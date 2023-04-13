import 'package:flutter/material.dart';

import '../../utils/image.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  String? name;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Align(
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
              child: Image.network(
                bg,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: h,
              width: w,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Spacer(),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          name = val;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('page3', arguments: name);
                          },
                          child: Container(
                            height: h * 0.06,
                            width: w * 0.3,
                            decoration: BoxDecoration(
                              color: Color(0xff0e0f21),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Start",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
