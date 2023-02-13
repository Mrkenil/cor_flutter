import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Darke Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 15,
                  color: Colors.red,
                ),
              ],
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}