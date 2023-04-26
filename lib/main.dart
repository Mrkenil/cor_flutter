import 'package:flutter/material.dart';
import 'package:pr5/views/screens/bill.dart';
import 'package:pr5/views/screens/cart.dart';
import 'package:pr5/views/screens/enter_details_page.dart';
import 'package:pr5/views/screens/get_start_page.dart';
import 'package:pr5/views/screens/home_page.dart';
import 'package:pr5/views/screens/itame_page.dart';

void main() {
  runApp(
    Invoice_generator(),
  );
}

class Invoice_generator extends StatelessWidget {
  const Invoice_generator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'get_start_page',
      routes: {
        'get_start_page': (context) => get_start_page(),
        'home_page': (context) => home_page(),
        'itame_page': (context) => itame_page(),
        'cart_page': (context) => cart_page(),
        'bill_page': (context) => bill_page(),
        'enter_detail_page': (context) => enter_deyail_page(),
      },
    );
  }
}
