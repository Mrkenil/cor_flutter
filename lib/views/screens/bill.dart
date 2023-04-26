import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pr5/utils/lists.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class bill_page extends StatefulWidget {
  const bill_page({Key? key}) : super(key: key);

  @override
  State<bill_page> createState() => _bill_pageState();
}

class _bill_pageState extends State<bill_page> {
  @override
  Widget build(BuildContext context) {
    int? total = 0;

    for (int i = 0; i < items.length; i++) {
      total = (total! + items[i]['priz'] * items[i]['order']) as int?;
    }
    ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        title: Text(
          "Bill",
          style: TextStyle(
            color: Color(0xff2a8657),
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final pw.Document pdf = pw.Document();
              // File Logo = File(logo);
              // var img = pw.MemoryImage(
              //   Logo.readAsBytesSync(),
              // );
              pdf.addPage(
                pw.Page(
                  pageFormat: PdfPageFormat.a4,
                  build: (pw.Context context) {
                    return pw.Container(
                      padding: pw.EdgeInsets.all(16),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                            height: 100,
                            width: 100,
                            alignment: pw.Alignment.center,
                            child: pw.Text("Logo"),
                          ),
                          pw.Divider(
                            color: PdfColors.black,
                            thickness: 2,
                          ),
                          pw.Text("Name : kenil lukhi"),
                          pw.Text("phone : 6354953037"),
                          pw.Text("email : kenilkenil425@gmail.com"),
                          pw.Divider(
                            color: PdfColors.black,
                            thickness: 2,
                          ),
                          pw.Container(
                            height: 400,
                            child: pw.ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, i) {
                                  return pw.Row(
                                    children: [
                                      pw.Text(
                                          "${items[i]['name']} (${items[i]['kg']}Kg)"),
                                      pw.Spacer(),
                                      pw.Text("X ${items[i]['order']}"),
                                      pw.SizedBox(
                                        width: 10,
                                      ),
                                      pw.Text("${items[i]['priz']}"),
                                      pw.SizedBox(
                                        width: 20,
                                      ),
                                      pw.Text(
                                          "${items[i]['priz'] * items[i]['order']}"),
                                    ],
                                  );
                                  // return pw.ListTile(
                                  //   leading: Text(
                                  //       "${items[i]['name']} (${items[i]['kg']}Kg)"),
                                  //   title: Text("${items[i]['order']}"),
                                  //   trailing: Text(
                                  //       "${items[i]['priz'] * items[i]['order']}"),
                                  // );
                                }),
                          ),
                          pw.Divider(
                            color: PdfColors.black,
                            thickness: 2,
                          ),
                          pw.Container(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Text(
                              "Total : ${total}",
                              style: pw.TextStyle(
                                fontSize: 25,
                              ),
                            ),
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
            icon: Icon(
              Icons.picture_as_pdf,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: Image.network(logo),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Text("Name : kenil lukhi"),
            Text("phone : 6354953037"),
            Text("email : kenilkenil425@gmail.com"),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading:
                          Text("${items[i]['name']} (${items[i]['kg']}Kg)"),
                      title: Text("${items[i]['order']}"),
                      trailing: Text("${items[i]['priz'] * items[i]['order']}"),
                    );
                  }),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Total : ${total}",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
