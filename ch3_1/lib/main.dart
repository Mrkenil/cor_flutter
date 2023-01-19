import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Center(
          child: Text("Hello "
              " \n\n\n\n"
              "Dart "
              " \n\n\n\n"
              "Flutter"),
        ),
      ),
    ),
  );
}
