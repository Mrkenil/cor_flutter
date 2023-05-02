import 'package:flutter/material.dart';
import 'package:project_cloke/views/screens/home_page.dart';

void main() {
  runApp(
    Cloks(),
  );
}

class Cloks extends StatelessWidget {
  const Cloks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
