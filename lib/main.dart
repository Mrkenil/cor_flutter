import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/achievement_page.dart';
import 'package:resume_builder_app/views/screens/carrier_objective_page.dart';
import 'package:resume_builder_app/views/screens/contact_info_page.dart';
import 'package:resume_builder_app/views/screens/declaration_page.dart';
import 'package:resume_builder_app/views/screens/eduction_page.dart';
import 'package:resume_builder_app/views/screens/experiences_page.dart';
import 'package:resume_builder_app/views/screens/home_page.dart';
import 'package:resume_builder_app/views/screens/interest_hobbies_page.dart';
import 'package:resume_builder_app/views/screens/personal_details_page.dart';
import 'package:resume_builder_app/views/screens/project_page.dart';
import 'package:resume_builder_app/views/screens/references_page.dart';
import 'package:resume_builder_app/views/screens/resume_workspace_page.dart';
import 'package:resume_builder_app/views/screens/technical_skills_page.dart';

void main() {
  runApp(
    resume_builder(),
  );
}

class resume_builder extends StatelessWidget {
  const resume_builder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => home_page(),
        'resume_workspace_page': (context) => resume_workspace_page(),
        'contact_info_page': (context) => contact_info_page(),
        'carrier_objective_page': (context) => carrier_objective_page(),
        'personal_details_page': (context) => personal_details_page(),
        'eduction_page': (context) => eduction_page(),
        'experiences_page': (context) => experiences_page(),
        'technical_skills_page': (context) => technical_skills_page(),
        'interest_hobbies_page': (context) => interest_hobbies_page(),
        'project_page': (context) => project_page(),
        'achievement_page': (context) => achievement_page(),
        'references_page': (context) => references_page(),
        'declaration_page': (context) => declaration_page(),
      },
    );
  }
}
