import 'package:flutter/material.dart';
import 'package:resume_bulider_6pm/views/screens/achievements_page.dart';
import 'package:resume_bulider_6pm/views/screens/build_options_page.dart';
import 'package:resume_bulider_6pm/views/screens/carrier_objective_page.dart';
import 'package:resume_bulider_6pm/views/screens/contect_info_page.dart';
import 'package:resume_bulider_6pm/views/screens/declaration_page.dart';
import 'package:resume_bulider_6pm/views/screens/education_page.dart';
import 'package:resume_bulider_6pm/views/screens/experiences_page.dart';
import 'package:resume_bulider_6pm/views/screens/home_page.dart';
import 'package:resume_bulider_6pm/views/screens/interest_hobbies_page.dart';
import 'package:resume_bulider_6pm/views/screens/pdf_page.dart';
import 'package:resume_bulider_6pm/views/screens/personal_details_page.dart';
import 'package:resume_bulider_6pm/views/screens/projects_page.dart';
import 'package:resume_bulider_6pm/views/screens/references_page.dart';
import 'package:resume_bulider_6pm/views/screens/technical_skills_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'build_options_page': (context) => BuildOptionsPage(),
        'contect_info_page': (context) => ContactInfoPage(),
        'carrier_objective_page': (context) => CarrierObjectivePage(),
        'personal_details_page': (context) => PersonalDetailsPage(),
        'education_page': (context) => EducationPage(),
        'experiences_page': (context) => ExperiencesPage(),
        'technical_skills_page': (context) => TechnicalSkillsPage(),
        'interest_hobbies_page': (context) => InterestHobbiesPage(),
        'projects_page': (context) => ProjectPage(),
        'achievements_page': (context) => AchievementsPage(),
        'references_page': (context) => ReferencesPage(),
        'declaration_page': (context) => DeclarationPage(),
        'pdf_page': (context) => PDFPage(),
      },
    ),
  );
}
