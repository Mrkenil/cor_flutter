import 'package:flutter/material.dart';

import '../views/screens/ima.dart';

class ima extends StatefulWidget {
  const ima({Key? key}) : super(key: key);

  @override
  State<ima> createState() => _imaState();
}

class _imaState extends State<ima> {
  int a = 10;
  bool con = true;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("GALLERY VIEWER"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  if (con == true) {
                    con = false;
                  } else {
                    con = false;
                  }
                });
              },
              child: Container(
                height: h * 0.1,
                width: h * 0.1,
                alignment: Alignment.center,
                child: Icon(Icons.cached),
              ),
            ),
          ),
        ],
      ),
      body: Align(
        child: (con)
            ? SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    a,
                    (index) => Container(
                      margin: EdgeInsets.all(w * 0.1),
                      height: h * 0.55,
                      width: w * 0.9,
                      child: Image.network(
                        i[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    a,
                    (index) => Container(
                      margin: EdgeInsets.all(w * 0.1),
                      height: h * 0.55,
                      width: w * 0.9,
                      child: Image.network(
                        i[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
