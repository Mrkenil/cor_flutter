import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("🛍️ List of Fruits"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "🍎 Apple\n",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍇 Greps\n",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍒 Cherry\n",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍓 Strawberry\n",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🥭 Mango\n",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍍 pineapple\n",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍋 Lemon\n",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🍉 Watermelon\n",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 40,
                  height: 1.4,
                  letterSpacing: 3,
                ),
              ),
              TextSpan(
                text: "🥥 coconut\n",
                style: TextStyle(
                  color: Colors.brown,
                  height: 1.4,
                  fontSize: 40,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  );
}