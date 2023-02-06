import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Openad Doors"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Align(
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                left: BorderSide(
                  color: Colors.white70,
                  width: 70,
                ),
                right: BorderSide(
                  color: Colors.white70,
                  width: 70,
                ),
                top: BorderSide(
                  color: Colors.black,
                  width: 50,
                ),
                bottom: BorderSide(
                  color: Colors.black,
                  width: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}