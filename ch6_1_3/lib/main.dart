import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Mix-up"),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: Align(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              alignment: Alignment.bottomRight,
              child: Container(
                width: 350,
                height: 350,
                color: Colors.yellow,
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.pink,
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.orange,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                        alignment: Alignment.center,
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.blue.shade300,
                        ),
                    ),
                  ),
                ),
              ),
          ),
        ),
      ),
      ),
  );
}