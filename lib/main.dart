import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade400,
            title: Text("My RNW"),
            centerTitle: true,
          ),
          body: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Red & White",
                  style: TextStyle(
                    fontSize: 65,
                    height: 0.4,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  TextSpan(text: "\n    Multimedia Education",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: "\n  shaping \"skills\" for \"scaling\" higher...!!!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
  );
}
