import 'package:flutter/material.dart';

import '../../utils/image.dart';
import '../../utils/list_of_q.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    String name = ModalRoute.of(context)!.settings.arguments as String;

    person = name;

    return Scaffold(
      body: Align(
        child: Container(
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
              IndexedStack(
                index: i,
                children: qust
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 240,
                            ),
                            Container(
                              height: 160,
                              width: w,
                              alignment: Alignment.center,
                              child: Container(
                                height: 160,
                                width: w * 0.8,
                                alignment: Alignment.center,
                                child: Text(
                                  "${e['id']}. ${e['qus']}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            const SizedBox(
                              height: 200,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (e['ans'] == 'A') {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: w * 0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "A : ${e['A']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (e['ans'] == 'B') {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: w * 0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "B : ${e['B']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (e['ans'] == 'C') {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: w * 0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "C : ${e['C']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (e['ans'] == 'D') {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: w * 0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "D : ${e['D']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
