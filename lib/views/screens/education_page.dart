import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  final TextEditingController CourseDegreeController = TextEditingController();
  final TextEditingController SchoolCollegeInstituteController =
      TextEditingController();
  final TextEditingController SchoolCGPAController = TextEditingController();
  final TextEditingController YearofpassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        toolbarHeight: 140,
        elevation: 0,
        title: Text("Education"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(24),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //course/degree
                          Text(
                            "Course/Degree",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: CourseDegreeController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Course first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.course = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "B.Tech Information Technology",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //school name
                          Text(
                            "School/College/Institute",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: SchoolCollegeInstituteController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your School/College/Institute Name first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.schoolcollegeinstitute = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Bhagavan Mahavir University",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //school cgpa
                          Text(
                            "School/College/Institute",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: SchoolCGPAController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your CGPA first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.schoolcollegeinstitutecgpa = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "70% (or) 7.0 CGPA",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //year of pass
                          Text(
                            "Year of Pass",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: YearofpassController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Year of Pass first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.yearofpass = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "2019",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
