import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';

import 'bottom_navigation_controller.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _donationController = TextEditingController();

  void sendUserDataToDB() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var currentUser = auth.currentUser;

    CollectionReference collectionRef =
    FirebaseFirestore.instance.collection("Offer_to_help_data");
    return collectionRef.doc(currentUser!.email)
        .set({
      "name": _nameController.text,
      "phone": _phoneController.text,
      "age": _ageController.text,
      "donation": _donationController.text,
    })
        .then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (_) => const BottomNavigation())))
        .catchError((error) => print("something is wrong. $error"));
  }
  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    double dw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Material(
            elevation: 10,
            child: Container(
              height: dh * 0.7,
              width: dw * 0.8,
              padding: EdgeInsets.all(50),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Help others during their crisis!!',
                      style: TextStyle(
                        color: green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              border: OutlineInputBorder(),
                            ),
                            validator: (val) =>
                                val != null ? 'Enter Name' : null,
                            onChanged: (val) {
                              setState(() {});
                            },
                            onSaved: (val) {},
                            controller: _nameController,
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'The donation you can make',
                              border: OutlineInputBorder(),
                            ),
                            validator: (val) {
                              if (val != null) {
                                return 'Can,t be empty';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {});
                            },
                            keyboardType: TextInputType.number,
                            controller: _donationController,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val != null) {
                                return 'Enter phone num';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {});
                            },
                            controller: _phoneController,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            controller: _ageController,
                            decoration: InputDecoration(
                              hintText: 'Age',
                              border: OutlineInputBorder(),
                            ),
                            validator: (val) {
                              if (val != null || (val?.length != 10)) {
                                return 'Cannot be empty';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {
                                sendUserDataToDB();
                              },
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              label: Text(
                                'DONE',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
