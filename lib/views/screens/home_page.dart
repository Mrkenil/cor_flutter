import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../utils/global.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int indx = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Builder"),
        centerTitle: true,
        leading: (indx == 1)
            ? IconButton(
                onPressed: () {
                  setState(() {
                    indx = 0;
                  });
                },
                icon: Icon(Icons.arrow_back),
              )
            : Container(),
        actions: [
          IconButton(
            onPressed: () async {
              final pw.Document pdf = pw.Document();
              var img = pw.MemoryImage(
                Global.image!.readAsBytesSync(),
              );
              pdf.addPage(
                pw.Page(
                  pageFormat: PdfPageFormat.a4,
                  build: (pw.Context context) {
                    return pw.Padding(
                      padding: pw.EdgeInsets.all(2),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Row(
                            children: [
                              pw.Container(
                                height: 150,
                                width: 150,
                                decoration: pw.BoxDecoration(
                                  border: pw.Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: pw.Image(img),
                              ),
                              pw.SizedBox(
                                width: 10,
                              ),
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "${Global.name}",
                                    style: pw.TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  pw.Text(
                                    "${Global.email}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.Text(
                                    "${Global.phone}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.Divider(),
                          pw.Text(
                            "Carrier Objective :",
                            style: pw.TextStyle(
                              fontSize: 26,
                            ),
                          ),
                          pw.Text(
                            "   ${Global.career_Objective}",
                            style: pw.TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          pw.Text(
                            "Current Designation : ${Global.current_Designation}",
                            style: pw.TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          pw.Divider(),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Row(
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "DOB :",
                                    style: pw.TextStyle(
                                      fontSize: 26,
                                    ),
                                  ),
                                  pw.Text(
                                    "   ${Global.DD}-${Global.MM}-${Global.YYYY}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.Text(
                                    "Marital Status :",
                                    style: pw.TextStyle(
                                      fontSize: 26,
                                    ),
                                  ),
                                  pw.Text(
                                    "   ${Global.Marital_Status}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.Text(
                                    "Languages Known :",
                                    style: pw.TextStyle(
                                      fontSize: 26,
                                    ),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    " English : ${Global.LEnglish}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.Text(
                                    " Gujarati : ${Global.LGujarati}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.Text(
                                    "Hindi : ${Global.LHindi}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "  Country : ${Global.country}",
                                    style: pw.TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ); // Center
                  },
                ),
              );
              await Printing.layoutPdf(onLayout: (formet) {
                return pdf.save();
              });
            },
            icon: Icon(Icons.print),
          ),
        ],
      ),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Text("Press Again....."),
        ),
        child: IndexedStack(
          index: indx,
          children: [
            Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "RESUMES",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            "assets/images/open-cardboard-box.png",
                            height: 60,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "No Resumes + Create new resume.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: w,
                    child: (Global.image == null)
                        ? Container()
                        : CircleAvatar(
                            foregroundImage: FileImage(Global.image!),
                          ),
                  ),
                  Container(
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Name : ${Global.name}",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email : ${Global.email}",
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          indx++;
          Navigator.of(context).pushNamed('resume_workspace_page');
        },
      ),
    );
  }
}
