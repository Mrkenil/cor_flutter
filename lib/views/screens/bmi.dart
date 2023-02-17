import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double mySliderVal = 1;
  int a = 1;
  int b = 1;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xff090e21),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * 0.35,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 70,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * 0.35,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xff3B3C4D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 70,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.2,
                  width: w * 0.85,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color(0xff626473),
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: mySliderVal.toInt().toString(),
                                  style: const TextStyle(
                                    fontSize: 40,
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                const TextSpan(
                                  text: "  cm",
                                  style: TextStyle(
                                    color: Color(0xff626473),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          child: SliderTheme(
                        data: const SliderThemeData(
                          activeTrackColor: Color(0xffF5C1D1),
                          inactiveTrackColor: Color(0xff555555),
                          thumbColor: Color(0xffeb1555),
                          trackHeight: 1,
                        ),
                        child: Slider(
                            value: mySliderVal,
                            min: 1,
                            max: 200,
                            onChanged: (val) {
                              setState(() {
                                mySliderVal = val;
                              });
                            }),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * 0.35,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$b",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (b > 1) b--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  b++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * 0.35,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$a",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (a > 1) a--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Ink(
              decoration: BoxDecoration(
                color: Color(0xffeb1555),
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                splashColor: Colors.white,
                onTap: () {
                  setState(() {
                    print("${w % mySliderVal * mySliderVal}");
                  });
                },
                child: Container(
                  width: w * 0.85,
                  height: h * 0.1,
                  alignment: Alignment.center,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff090e21),
    );
  }
}
