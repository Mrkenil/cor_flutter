import 'package:flutter/material.dart';
import 'package:instr_soty/views/screens/instra_home.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
