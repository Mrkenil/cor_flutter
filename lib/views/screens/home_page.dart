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

              pdf.addPage(
                pw.Page(
                  pageFormat: PdfPageFormat.a4,
                  build: (pw.Context context) {
                    return pw.Center(
                      child: pw.Text("Hello World"),
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
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: w,
                    child: CircleAvatar(
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
