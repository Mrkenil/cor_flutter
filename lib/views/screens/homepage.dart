import 'package:flutter/material.dart';

class age extends StatefulWidget {
  const age({Key? key}) : super(key: key);

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {
  String? Bdate;
  String? Bmonth;
  String? Byear;

  int? currentYear;
  int? currentMonth;
  int? currentDay;

  @override
  Widget build(BuildContext context) {
    DateTime curruntDate = DateTime.now();

    TextEditingController daycontroller = TextEditingController();
    TextEditingController monthcontroller = TextEditingController();
    TextEditingController yearcontroller = TextEditingController();
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Age Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff203A43),
      ),
      body: Align(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Date",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabled: false,
                      disabledBorder: OutlineInputBorder(),
                      hintText:
                          "${curruntDate.day} / ${curruntDate.month} / ${curruntDate.year}",
                      hintStyle: TextStyle(
                        color: Color(0xff1c003E),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Date Of Birth",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 20,
                      child: Container(
                        child: TextField(
                          onChanged: (Value) => setState(() {
                            Bdate = Value;
                          }),
                          decoration: InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 20,
                      child: Container(
                        child: TextField(
                          onChanged: (Value) => setState(() {
                            Bmonth = Value;
                          }),
                          decoration: InputDecoration(
                            hintText: "MM",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 20,
                      child: Container(
                        child: TextField(
                          onChanged: (Value) => setState(() {
                            Byear = Value;
                          }),
                          decoration: InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 20,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              daycontroller.clear();
                              monthcontroller.clear();
                              yearcontroller.clear();

                              Bdate = null;
                              Bmonth = null;
                              Byear = null;

                              currentDay = null;
                              currentMonth = null;
                              currentYear = null;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 20,
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                              ),
                              color: Color(0xff13457A),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Calculat",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueAccent,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
