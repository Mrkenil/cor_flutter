import 'package:flutter/material.dart';

void main() {
  runApp(
    stakeApp(),
  );
}

class stakeApp extends StatefulWidget {
  const stakeApp({Key? key}) : super(key: key);

  @override
  State<stakeApp> createState() => _stakeAppState();
}

class _stakeAppState extends State<stakeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Stack App",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "Purple",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 44,
                left: 30,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "indigo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 60,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "lightBlue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 115,
                left: 90,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "green",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 145,
                left: 120,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "amber",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: 140,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "amber",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 195,
                left: 180,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // alignment: Alignment(-0.8, -0.9),
                  child: Text(
                    "amber",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
