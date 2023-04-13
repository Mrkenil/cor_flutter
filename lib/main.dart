import 'package:flutter/material.dart';
import 'package:kbc_game/views/screens/page1.dart';
import 'package:kbc_game/views/screens/page2.dart';
import 'package:kbc_game/views/screens/page3.dart';
import 'package:kbc_game/views/screens/page4.dart';
import 'package:kbc_game/views/screens/page5.dart';

void main() => runApp(KBC());

class KBC extends StatelessWidget {
  const KBC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => page1(),
        'page2': (context) => page2(),
        'page3': (context) => page3(),
        'page4': (context) => page4(),
        'page5': (context) => page5(),
      },
    );
  }
}
