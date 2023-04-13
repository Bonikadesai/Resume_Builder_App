import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  final GlobalKey<FormState> ExperienceFormKey = GlobalKey<FormState>();

  final TextEditingController CompanyNameController = TextEditingController();
  final TextEditingController SchoolCollegeInstituteController =
      TextEditingController();
  final TextEditingController RolesController = TextEditingController();
  final TextEditingController DateJoinedController = TextEditingController();
  final TextEditingController DateExitController = TextEditingController();
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
        title: Text("Experience"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                    child: Form(
                      key: ExperienceFormKey,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //course/degree
                            Text(
                              "Company Name",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextFormField(
                                controller: CompanyNameController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name first...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Globals.companyname = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "New Enterprise, San Francisco",
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
                                  Globals.qualitytest = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Quality Test Engineer",
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
                              "Roles (optional)",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextFormField(
                                maxLines: 3,
                                controller: RolesController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Roles first...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Globals.role = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText:
                                      "Working with team members to come up with new concepts and product analysis.",
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
                              "Employed Status",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            RadioListTile(
                                title: Text(
                                  "Previously Employed",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: "Previously Employed",
                                groupValue: Globals.employed_status,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.employed_status = val;
                                  });
                                }),
                            RadioListTile(
                              title: Text(
                                "Currently Employed",
                                style: TextStyle(color: Colors.blue),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: "Currently Employed",
                              groupValue: Globals.employed_status,
                              onChanged: (val) {
                                setState(() {
                                  Globals.employed_status = val;
                                });
                              },
                            ),

                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            Text(
                              "Date Joined",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextFormField(
                              controller: DateJoinedController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Date Joined first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.datejoined = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YY",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            (Globals.employed_status != "Currently Employed")
                                ? Text(
                                    "Date Exit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  )
                                : Container(),
                            (Globals.employed_status != "Currently Employed")
                                ? TextFormField(
                                    controller: DateExitController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your Date Joined first...";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      Globals.datexit = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "DD/MM/YY",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              height: 12,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (ExperienceFormKey.currentState!
                                        .validate()) {
                                      ExperienceFormKey.currentState!.save();

                                      print("==============");
                                      print(Globals.companyname);
                                      print(Globals.qualitytest);
                                      print(Globals.role);
                                      print(Globals.datejoined);
                                      print(Globals.datexit);
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
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
