import 'package:flutter/material.dart';

import '../../utils/global.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Declaration"),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: (Global.declaration)
              ? Container(
                  height: h * 0.5,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        height: h * 0.1,
                        alignment: Alignment.center,
                        child: SwitchListTile(
                          value: Global.declaration,
                          title: Text(
                            "Declaration",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          onChanged: (val) {
                            setState(() {
                              Global.declaration = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  height: h * 0.1,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: SwitchListTile(
                    value: Global.declaration,
                    title: Text(
                      "Declaration",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    onChanged: (val) {
                      setState(() {
                        Global.declaration = val;
                      });
                    },
                  ),
                ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
