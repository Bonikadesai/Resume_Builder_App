import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  final TextEditingController DOBController = TextEditingController();
  final TextEditingController NationalityController = TextEditingController();
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
        title: Text("Personal Details"),
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
                  height: 550,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //dob
                          Text(
                            "DOB",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: DOBController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Dob first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.dob = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //marital status
                          Text(
                            "Marital Status",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          RadioListTile(
                              title: Text("Single"),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: "Single",
                              groupValue: Globals.marital_status,
                              onChanged: (val) {
                                setState(() {
                                  Globals.marital_status = val!;
                                });
                              }),
                          RadioListTile(
                              title: Text("Married"),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: "Married",
                              groupValue: Globals.marital_status,
                              onChanged: (val) {
                                setState(() {
                                  Globals.marital_status = val!;
                                });
                              }),
                          //languages known
                          Text(
                            "Languages Known",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text("English"),
                            value: Globals.isEnglish,
                            onChanged: (val) {
                              setState(() {
                                Globals.isEnglish = val!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text("Hindi"),
                            value: Globals.isHindi,
                            onChanged: (val) {
                              setState(() {
                                Globals.isHindi = val!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text("Gujarati"),
                            value: Globals.isGujarati,
                            onChanged: (val) {
                              setState(() {
                                Globals.isGujarati = val!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //nationality
                          Text(
                            "Nationality",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              controller: NationalityController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Nationality first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                Globals.nationality = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Indian",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //save button
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 110,
                            color: Colors.blue,
                            child: Text(
                              "SAVE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
