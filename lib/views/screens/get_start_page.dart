import 'package:flutter/material.dart';

import '../../utils/lists.dart';

class get_start_page extends StatefulWidget {
  const get_start_page({Key? key}) : super(key: key);

  @override
  State<get_start_page> createState() => _get_start_pageState();
}

class _get_start_pageState extends State<get_start_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.network(logo),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('home_page');
            },
            child: Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff2a8657),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
