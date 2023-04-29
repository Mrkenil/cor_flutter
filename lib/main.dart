import 'package:flutter/material.dart';

void main() {
  runApp(
    viva2(),
  );
}

class viva2 extends StatefulWidget {
  const viva2({Key? key}) : super(key: key);

  @override
  State<viva2> createState() => _viva2State();
}

class _viva2State extends State<viva2> {
  double h_p = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("slider"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    for (int i = 0; i < h_p; i++)
                      Row(
                        children: [
                          for (int j = 0; j <= i; j++)
                            Text(
                              "*",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
              Slider(
                  max: 10,
                  min: 0,
                  value: h_p,
                  onChanged: (val) {
                    setState(() {
                      h_p = val;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
