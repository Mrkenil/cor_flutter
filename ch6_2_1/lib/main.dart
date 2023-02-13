import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Button"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 20,
                  color: Colors.green,
                  blurRadius: 30,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "GO",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
