import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({Key? key}) : super(key: key);

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  List<TextEditingController> allTextFileds = [];
  @override
  void initState() {
    super.initState();
    allTextFileds.add(TextEditingController());
    allTextFileds.add(TextEditingController());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Achievements"),
        centerTitle: true,
        toolbarHeight: 140,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Enter Achivements",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        ...allTextFileds.map((e) {
                          return Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: TextField(
                                  controller: e,
                                  decoration: InputDecoration(
                                    hintText: "Exceeded sales 17% avearage",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      allTextFileds.remove(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                        const SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            child: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                allTextFileds.add(TextEditingController());
                              });
                            },
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
      backgroundColor: Color(0xffededed),
    );
  }
}
