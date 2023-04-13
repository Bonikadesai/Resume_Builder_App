import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_bulider_6pm/utils/globals.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  final GlobalKey<FormState> DeclarationFormKey = GlobalKey<FormState>();

  final TextEditingController DescriptionController = TextEditingController();
  final TextEditingController DateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Declaration",
        ),
        centerTitle: true,
        toolbarHeight: 140,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      "Declaration",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Switch(
                    value: Globals.declaration,
                    onChanged: (val) {
                      setState(() {
                        Globals.declaration = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          (Globals.declaration != false)
              ? Padding(
                  padding: const EdgeInsets.only(right: 24, left: 24),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
                      child: Form(
                        key: DeclarationFormKey,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.radar,
                                size: 60,
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: DescriptionController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Descripation first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.descripation = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Descripation",
                                    hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Date",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: DateController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Date first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.date = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Place(Interview venue/city)",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: DescriptionController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Place first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.place = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Eg. Surat",
                                    hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    pw.Document pdf = pw.Document();
                                    pdf.addPage(
                                      pw.Page(
                                          pageFormat: PdfPageFormat.a4,
                                          build: (pw.Context contex) {
                                            return pw.Center(
                                              child: pw.Text("Hello Fluter"),
                                            );
                                          }),
                                    );
                                    setState(() {
                                      if (DeclarationFormKey.currentState!
                                          .validate()) {
                                        DeclarationFormKey.currentState!.save();

                                        print("==============");
                                        print(Globals.descripation);
                                        print(Globals.date);
                                        print(Globals.place);
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
                )
              : Container(),
        ],
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}
