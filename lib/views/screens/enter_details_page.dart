import 'package:flutter/material.dart';

class enter_deyail_page extends StatefulWidget {
  const enter_deyail_page({Key? key}) : super(key: key);

  @override
  State<enter_deyail_page> createState() => _enter_deyail_pageState();
}

class _enter_deyail_pageState extends State<enter_deyail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Store",
          style: TextStyle(
            color: Color(0xff2a8657),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
      ),
    );
  }
}
