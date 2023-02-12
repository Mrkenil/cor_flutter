import 'package:ch7_1_4/views/screens/Dlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    list(),
  );
}

class list extends StatelessWidget {
  const list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dynami(),
    );
  }
}
