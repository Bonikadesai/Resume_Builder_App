import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class InterestHobbiesPage extends StatefulWidget {
  const InterestHobbiesPage({Key? key}) : super(key: key);

  @override
  State<InterestHobbiesPage> createState() => _InterestHobbiesPageState();
}

class _InterestHobbiesPageState extends State<InterestHobbiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interest/Hobbies"),
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
              height: 350,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Hobbies",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Traveling"),
                      value: Globals.traveling,
                      onChanged: (val) {
                        setState(() {
                          Globals.traveling = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Listening to music"),
                      value: Globals.listeningtomusic,
                      onChanged: (val) {
                        setState(() {
                          Globals.listeningtomusic = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Reading"),
                      value: Globals.reading,
                      onChanged: (val) {
                        setState(() {
                          Globals.reading = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Driving"),
                      value: Globals.driving,
                      onChanged: (val) {
                        setState(() {
                          Globals.driving = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Drowing"),
                      value: Globals.drowing,
                      onChanged: (val) {
                        setState(() {
                          Globals.drowing = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Dancing"),
                      value: Globals.dancing,
                      onChanged: (val) {
                        setState(() {
                          Globals.dancing = val!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text("Cooking"),
                      value: Globals.cooking,
                      onChanged: (val) {
                        setState(() {
                          Globals.cooking = val!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
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
