import 'package:ch9_2/views/screens/lottery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const home(),
  );
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const lot(),
    );
  }
}
