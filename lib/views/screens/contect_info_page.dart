import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/globals.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  int intialLayer = 0;
  final ImagePicker picker = ImagePicker();
  File? xfile;
  File? yfile;
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

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
        elevation: 0,
        title: Text("Resume Workspace"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                contactFormKey.currentState!.reset();
                nameController.text = "";
                emailController.text = "";
                phoneController.text = "";
                address1Controller.text = "";
                address2Controller.text = "";
                address3Controller.text = "";
              },
              icon: Icon(
                Icons.refresh,
              )),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          intialLayer = 0;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          intialLayer = 1;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Color(0xffededed),
                padding: EdgeInsets.all(24),
                child: IndexedStack(
                  index: intialLayer,
                  children: [
                    //contact layer
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white,
                        height: 400,
                        width: double.infinity,
                        child: Form(
                          key: contactFormKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                //nameController
                                TextFormField(
                                  controller: nameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your name first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.name = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    prefixIcon: Icon(Icons.person),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                //emailController
                                TextFormField(
                                  controller: emailController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your email first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.email = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                //PhoneController
                                TextFormField(
                                  controller: phoneController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your phone no. first...";
                                    } else if (val!.length != 10) {
                                      return "Enter 10 digit phone no....";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.phone = val;
                                  },
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: "Phone",
                                    prefixIcon: Icon(Icons.phone_android),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                //addree1Controller
                                TextFormField(
                                  controller: address1Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Address1 first...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    Globals.address1 = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: "Address (Street, Bulding no.)",
                                    prefixIcon: Icon(Icons.location_on),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                //addree2Controller
                                TextFormField(
                                  controller: address2Controller,
                                  onSaved: (val) {
                                    Globals.address2 = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: "Address Line 2",
                                  ),
                                ),
                                const SizedBox(height: 16),
                                //addree3Controller
                                TextFormField(
                                  controller: address3Controller,
                                  onSaved: (val) {
                                    Globals.address3 = val;
                                  },
                                  textInputAction: TextInputAction.done,
                                  onFieldSubmitted: (val) {
                                    if (contactFormKey.currentState!
                                        .validate()) {
                                      contactFormKey.currentState!.save();

                                      print("==============");
                                      print(Globals.name);
                                      print(Globals.email);
                                      print(Globals.phone);
                                      print(Globals.address1);
                                      print(Globals.address2);
                                      print(Globals.address3);
                                      print("==============");
                                    }
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Address Line 3",
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //photo layer
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 300,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 65,
                            child: Text(
                              "ADD",
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Colors.grey.shade300,
                            foregroundImage: (Globals.image != null)
                                ? FileImage(Globals.image as File)
                                : null,
                          ),
                          FloatingActionButton(
                            mini: true,
                            child: Icon(Icons.add),
                            onPressed: () async {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  // return AlertDialog(
                                  //     // title: Center(
                                  //     //   child: Text("Confrimational"),
                                  //     // ),
                                  //     // content: Text("Are you sure to exit??"),
                                  //     // actions: [
                                  //     //   ElevatedButton(
                                  //     //     onPressed: () {
                                  //     //       Navigator.of(context).pop(true);
                                  //     //     },
                                  //     //     child: Text("Yes"),
                                  //     //   ),
                                  //     //   OutlinedButton(
                                  //     //     onPressed: () {
                                  //     //       Navigator.of(context).pop(false);
                                  //     //     },
                                  //     //     child: Text("No"),
                                  //     //   ),
                                  //     // ],
                                  //     );
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Profile Photo",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () async {
                                              final XFile? xfile =
                                                  await picker.pickImage(
                                                      source:
                                                          ImageSource.camera);

                                              String imagePath = xfile!.path;
                                              setState(() {
                                                Globals.image = File(imagePath);
                                              });
                                            },
                                            icon: Icon(
                                              Icons.camera_alt,
                                              size: 40,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () async {
                                              final XFile? yfile =
                                                  await picker.pickImage(
                                                      source:
                                                          ImageSource.gallery);

                                              String imagePath = xfile!.path;
                                              setState(() {
                                                Globals.image = File(imagePath);
                                              });
                                            },
                                            icon: Icon(
                                              Icons.image,
                                              size: 40,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
