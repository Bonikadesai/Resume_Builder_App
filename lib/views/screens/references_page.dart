import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({Key? key}) : super(key: key);

  @override
  State<ReferencesPage> createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  final TextEditingController ReferenceNameController = TextEditingController();
  final TextEditingController DesignationController = TextEditingController();
  final TextEditingController OrganizationInstituteController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Referces",
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
        ),
        centerTitle: true,
        toolbarHeight: 140,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //referencename
                    Text(
                      "Reference Name",
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
                      controller: ReferenceNameController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your Reference Name first...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Globals.referncename = val;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Suresh Shah",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    //designation
                    Text(
                      "Designation",
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
                      controller: DesignationController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your Designation first...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Globals.designation = val;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Marketing Manager, ID-342332",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    //organization/institute
                    Text(
                      "Organization/Institute",
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
                      controller: OrganizationInstituteController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your Oraganization/Institute first...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Globals.organization = val;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Green Energy Pvt. Ltd",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
