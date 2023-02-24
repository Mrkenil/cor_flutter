import 'package:colorp/views/screens/colorp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Homepage(),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: color(),
    );
  }
}
