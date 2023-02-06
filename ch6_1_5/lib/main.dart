import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Letter Cover"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Align(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              border: Border(
                left: BorderSide(
                  color: Colors.greenAccent,
                  width: 130,
                ),
                right: BorderSide(
                  color: Colors.greenAccent,
                  width: 130,
                ),
                top: BorderSide(
                  color: Colors.green,
                  width:130,
                ),
                bottom: BorderSide(
                  color: Colors.green,
                  width: 130,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}