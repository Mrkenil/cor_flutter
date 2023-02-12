import 'package:ch7_2_3/views/screens/scrol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    home(),
  );
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scrol(),
    );
  }
}
