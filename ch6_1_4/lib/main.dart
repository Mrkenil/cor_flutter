import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mashal"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Align(
          child: Container(
            height: 250,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.brown.shade800,
              border: Border(
                top: BorderSide(
                  color: Colors.brown,
                  width: 40,
                ),
                bottom: BorderSide(
                  color: Colors.brown,
                  width: 40,
                ),
                left: BorderSide(
                  color: Colors.white,
                  width: 50,
                ),
                right: BorderSide(
                  color: Colors.white,
                  width: 50,
                ),
              ),
            ),
            alignment: Alignment(0,-2.7),
            child: Text("🔥",
            style: TextStyle(
              fontSize: 50,
            ),),
          ),
        ),
      ),
    ),
  );
}