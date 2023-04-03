import 'dart:io';

import 'package:flutter/material.dart';

import '../../utils/global.dart';

import 'package:image_picker/image_picker.dart';

class contact_info_page extends StatefulWidget {
  const contact_info_page({Key? key}) : super(key: key);

  @override
  State<contact_info_page> createState() => _contact_info_pageState();
}

class _contact_info_pageState extends State<contact_info_page> {
  int screen = 0;
  final ImagePicker picker = ImagePicker();
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController add1Controller = TextEditingController();
  final TextEditingController add2Controller = TextEditingController();
  final TextEditingController add3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact info"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                nameController.clear();
                phoneController.clear();
                emailController.clear();
                add3Controller.clear();
                add2Controller.clear();
                add1Controller.clear();

                Global.name = null;
                Global.email = null;
                Global.phone = null;
                Global.address1 = null;
                Global.address2 = null;
                Global.address3 = null;
              });
            },
            icon: Icon(Icons.clear_rounded),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          screen = 0;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          screen = 1;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: IndexedStack(
                index: screen,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: h * 0.6,
                      width: w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        key: contactFormKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                          color: Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter number first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.name = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.mail,
                                          size: 50,
                                          color: Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter email first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.email = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.phone_android_sharp,
                                          size: 50,
                                          color: Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: phoneController,
                                      decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter number first....";
                                        } else if (val.length != 10) {
                                          return "Enter 10 digits number..";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.phone = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.location_pin,
                                          size: 50,
                                          color: Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: add1Controller,
                                      decoration: InputDecoration(
                                        hintText:
                                            "Address(Street, Building No)",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter number first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.address1 = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: add2Controller,
                                      decoration: InputDecoration(
                                        hintText: "Address2",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      onSaved: (val) {
                                        Global.address2 = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: add3Controller,
                                      decoration: InputDecoration(
                                        hintText: "Address3",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onFieldSubmitted: (val) {
                                        if (contactFormKey.currentState!
                                            .validate()) {
                                          contactFormKey.currentState!.save();
                                        }
                                      },
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.text,
                                      onSaved: (val) {
                                        Global.address3 = val;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: h * 0.4,
                      width: w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                            foregroundImage: (Global.image != null)
                                ? FileImage(Global.image as File)
                                : null,
                            child: Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () async {
                              XFile? image = await picker.pickImage(
                                  source: ImageSource.camera);

                              String? imag = image!.path;

                              setState(() {
                                Global.image = File(imag);
                              });
                            },
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
