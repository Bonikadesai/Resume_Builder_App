import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class CarrierObjectivePage extends StatefulWidget {
  const CarrierObjectivePage({Key? key}) : super(key: key);

  @override
  State<CarrierObjectivePage> createState() => _CarrierObjectivePageState();
}

class _CarrierObjectivePageState extends State<CarrierObjectivePage> {
  final TextEditingController CarrierobjectiveController =
      TextEditingController();
  final TextEditingController ExperiencedcandidateController =
      TextEditingController();

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
        title: Text("Carrier Objective"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(24),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Carrier Objective",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: TextFormField(
                            maxLines: 6,
                            controller: CarrierobjectiveController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Description first...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Globals.carrier = val;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Descripation",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(24),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Designation (Experienced candidate)",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: TextFormField(
                            controller: ExperiencedcandidateController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Experienced Candidate first...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Globals.expcandidate = val;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Software Engineer",
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
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
