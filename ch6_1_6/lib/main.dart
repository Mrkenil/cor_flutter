import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("3D Cube"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent.shade700,
        ),
        body: Align(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.greenAccent.shade700,
              border: Border(
                top: BorderSide(
                  color: Colors.greenAccent.shade200,
                  width: 30,
                ),
                bottom: BorderSide(
                  color: Colors.greenAccent.shade200,
                  width: 30,
                ),
                left: BorderSide(
                  color: Colors.greenAccent.shade400,
                  width: 30,
                ),
                right: BorderSide(
                  color: Colors.greenAccent.shade400,
                  width: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}