import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Align(
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 15,
                  color: Colors.greenAccent,
                ),
              ],
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}