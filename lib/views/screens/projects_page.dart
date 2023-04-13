import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final GlobalKey<FormState> ProjectFormKey = GlobalKey<FormState>();
  final TextEditingController ProjectTitleController = TextEditingController();
  final TextEditingController RoleController = TextEditingController();
  final TextEditingController TechnologiesController = TextEditingController();
  final TextEditingController ProjectDescripationController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
        centerTitle: true,
        toolbarHeight: 140,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              height: 500,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: ProjectFormKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //project title
                        Text(
                          "Project Title",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: ProjectTitleController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Project Title first...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.projecttitle = val;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Resume Bulider App",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        //technologoies
                        Text(
                          "Technologies",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "C programming",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          value: Globals.cprogramming,
                          onChanged: (val) {
                            setState(() {
                              Globals.cprogramming = val!;
                            });
                          },
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "C++",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          value: Globals.cpp,
                          onChanged: (val) {
                            setState(() {
                              Globals.cpp = val!;
                            });
                          },
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "Flutter",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          value: Globals.flutter,
                          onChanged: (val) {
                            setState(() {
                              Globals.flutter = val!;
                            });
                          },
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        //roles
                        Text(
                          "Roles",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: RoleController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your roles first...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.rolesproject = val;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Organize team members, Code analysis",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        //technologies
                        Text(
                          "Technologies",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: TechnologiesController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Technologies first...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.technologies = val;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "5 - Programmers",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        //project Descripation
                        Text(
                          "Project Description",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: ProjectDescripationController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Project Descripation first...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.projectdescripation = val;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Your Project Descripation",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (ProjectFormKey.currentState!.validate()) {
                                  ProjectFormKey.currentState!.save();

                                  print("==============");
                                  print(Globals.projecttitle);
                                  print(Globals.rolesproject);
                                  print(Globals.technologies);
                                  print(Globals.projectdescripation);
                                  print(Globals.cprogramming);
                                  print(Globals.cpp);
                                  print(Globals.flutter);
                                  print("==============");
                                }
                              });
                            },
                            child: Text(
                              "SAVE",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
