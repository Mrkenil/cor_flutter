import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Text(
              "     Red and White group of industry\n"
                  "One step in Changing Education Chain...",
                style: TextStyle(
              fontSize: 20, color: Colors.red),
        ),
        ),
      ),
    ),
  );
}