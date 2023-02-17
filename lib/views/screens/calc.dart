import 'package:flutter/material.dart';

import '../../utils/atech.dart';

class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  int Desply = 0;
  int i = 0;
  List a = List.generate(b, (index) => 0);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Align(
        child: Padding(
          padding: EdgeInsets.all(w * 0.05),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: h * 0.1,
                        width: w * 0.9,
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "$Desply",
                          style: TextStyle(
                            fontSize: 60,
                            color: font,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.5,
                          decoration: BoxDecoration(
                            color: botton,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "AC",
                            style: TextStyle(
                              fontSize: 30,
                              color: font,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b++;
                              i++;
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 20,
                                color: modu,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b++;
                              i++;
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "/",
                              style: TextStyle(
                                fontSize: 20,
                                color: botton,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 7;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "7",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 8;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "8",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 9;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b++;
                              i++;
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "*",
                              style: TextStyle(
                                fontSize: 20,
                                color: botton,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      a[i] = a[i] * 10 + 4;
                      Desply = a[i];
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "4",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                a[i] = a[i] * 10 + 5;
                                Desply = a[i];
                              });
                            },
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.2,
                              alignment: Alignment.center,
                              child: Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: font,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                a[i] = a[i] * 10 + 6;
                                Desply = a[i];
                              });
                            },
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.2,
                              alignment: Alignment.center,
                              child: Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: font,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                b++;
                                i++;
                              });
                            },
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.2,
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: botton,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 1;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 2;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 3;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b++;
                              i++;
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 20,
                                color: botton,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 00;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a[i] = a[i] * 10 + 0;
                              Desply = a[i];
                            });
                          },
                          child: Container(
                            height: h * 0.1,
                            width: w * 0.2,
                            alignment: Alignment.center,
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 20,
                                color: font,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 20,
                              color: font,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.2,
                          decoration: BoxDecoration(
                            color: botton,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "=",
                            style: TextStyle(
                              fontSize: 20,
                              color: font,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: beckg,
    );
  }
}
