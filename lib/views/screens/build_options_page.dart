import 'package:flutter/material.dart';

class BuildOptionsPage extends StatefulWidget {
  const BuildOptionsPage({Key? key}) : super(key: key);

  @override
  State<BuildOptionsPage> createState() => _BuildOptionsPageState();
}

class _BuildOptionsPageState extends State<BuildOptionsPage> {
  List<Map<String, dynamic>> allBuildOptions = [
    {
      "image": "assets/images/contact-books.png",
      "title": "Contect Info",
      "route": "contect_info_page"
    },
    {
      "image": "assets/images/briefcase.png",
      "title": "Carrier Objective",
      "route": "carrier_objective_page"
    },
    {
      "image": "assets/images/user.png",
      "title": "Personal Details",
      "route": "personal_details_page"
    },
    {
      "image": "assets/images/mortarboard.png",
      "title": "Education",
      "route": "education_page"
    },
    {
      "image": "assets/images/thinking.png",
      "title": "Experiences",
      "route": "experiences_page"
    },
    {
      "image": "assets/images/achievement.png",
      "title": "Technical Skills",
      "route": "technical_skills_page"
    },
    {
      "image": "assets/images/open-book.png",
      "title": "Interest/Hobbies",
      "route": "interest_hobbies_page"
    },
    {
      "image": "assets/images/project.png",
      "title": "Projects",
      "route": "projects_page"
    },
    {
      "image": "assets/images/experience.png",
      "title": "Achievements",
      "route": "achievements_page"
    },
    {
      "image": "assets/images/handshake.png",
      "title": "References",
      "route": "references_page"
    },
    {
      "image": "assets/images/declaration.png",
      "title": "Declaration",
      "route": "declaration_page"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        toolbarHeight: 140,
        title: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Resume Workspace"),
              const SizedBox(height: 35),
              Text("Build Options"),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: allBuildOptions.map((e) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          e['image'],
                          width: 40,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          e['title'],
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(e['route']);
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
