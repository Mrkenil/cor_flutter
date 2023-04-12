import 'package:ch10_2/utils/mylists.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "valorant characters",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Align(
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Valorant",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: char
                      .map(
                        (e) => Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: h * 0.3,
                              width: w * 0.6,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            Container(
                              height: h * 0.7,
                              width: w * 0.5,
                              alignment: Alignment.center,
                              child: Container(
                                height: h * 0.7,
                                width: w * 0.5,
                                alignment: Alignment(0, -1),
                                child: Image(
                                  image: NetworkImage(e['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: h * 0.3,
                              width: w * 0.5,
                              alignment: Alignment(0, 0.8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Text(
                                      e['name'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    flex: 7,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.of(context)
                                              .pushNamed('page2', arguments: e);
                                        });
                                      },
                                      child: Container(
                                        height: h * 0.05,
                                        width: w * 0.2,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text("KNOW MORE"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
