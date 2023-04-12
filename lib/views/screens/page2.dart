import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    Map cr = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("valorant characters"),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.5,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black45,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage(cr['image']),
                ),
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: h * 0.1,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black45,
              ),
              alignment: Alignment.center,
              child: Text(
                cr['name'],
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: h * 0.5,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black45,
              ),
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cr['Con'],
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
