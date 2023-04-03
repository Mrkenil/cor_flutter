import 'package:flutter/material.dart';

class resume_workspace_page extends StatefulWidget {
  const resume_workspace_page({Key? key}) : super(key: key);

  @override
  State<resume_workspace_page> createState() => _resume_workspace_pageState();
}

class _resume_workspace_pageState extends State<resume_workspace_page> {
  List<Map<String, dynamic>> allbuildoption = [
    {
      'image': "assets/images/contact-books.png",
      'tital': "Contact info",
      'route': "contact_info_page",
    },
    {
      'image': "assets/images/briefcase.png",
      'tital': "Carrier Objective",
      'route': "carrier_objective_page",
    },
    {
      'image': "assets/images/user.png",
      'tital': "Personal Details",
      'route': "personal_details_page",
    },
    {
      'image': "assets/images/mortarboard.png",
      'tital': "Eduction",
      'route': "eduction_page",
    },
    {
      'image': "assets/images/thinking.png",
      'tital': "Experiences",
      'route': "experiences_page",
    },
    {
      'image': "assets/images/experience.png",
      'tital': "Technical Skills",
      'route': "technical_skills_page",
    },
    {
      'image': "assets/images/open-book.png",
      'tital': "Interest/Hobbies",
      'route': "interest_hobbies_page",
    },
    {
      'image': "assets/images/project.png",
      'tital': "Project",
      'route': "project_page",
    },
    {
      'image': "assets/images/achievement.png",
      'tital': "Achievement",
      'route': "achievement_page",
    },
    {
      'image': "assets/images/handshake.png",
      'tital': "References",
      'route': "references_page",
    },
    {
      'image': "assets/images/declaration.png",
      'tital': "Declaration",
      'route': "declaration_page",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Workspace"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                child: Text(
                  "Build Options",
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
                child: SingleChildScrollView(
                  child: Column(
                    children: allbuildoption
                        .map(
                          (e) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    e['image'],
                                    height: 35,
                                  ),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  Text(
                                    e['tital'],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(e['route']);
                                    },
                                    icon: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
