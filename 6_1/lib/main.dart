import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("My App"),
          centerTitle: true,
          elevation: 10,
        ),
        body: Align(
          child: Container(
            height:300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green.shade900,
            ),
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                color: Colors.green
              ),
              child: Text(
                "OOOO",
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.black.withOpacity(0.5),
                  letterSpacing: -40,
                ),

              ),
            ),

          ),
        ),
        backgroundColor: Colors.green.shade700,
      ),
    ),
  );
}