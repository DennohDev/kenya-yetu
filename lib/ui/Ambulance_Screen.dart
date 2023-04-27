import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';

import 'bottom_navigation_controller.dart';

class AmbulanceService extends StatefulWidget {
  const AmbulanceService({Key? key}) : super(key: key);

  @override
  State<AmbulanceService> createState() => _AmbulanceServiceState();
}

class _AmbulanceServiceState extends State<AmbulanceService> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  void sendUserDataToDB() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var currentUser = auth.currentUser;

    CollectionReference collectionRef =
    FirebaseFirestore.instance.collection("Ambulance_Request_Data");
    return collectionRef.doc(currentUser!.email)
        .set({
      "name": _nameController.text,
      "phone": _phoneController.text,
      "age": _ageController.text,
      "location": _locationController.text,
    })
        .then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (_) => const BottomNavigation())))
        .catchError((error) => print("something is wrong. $error"));
  }

  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Ambulance Service"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Post Your Request here",
                  style: TextStyle(color: green, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
              "Enter the data of the person who need help",
              style: TextStyle(color: green, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: dh * 0.6,
                  width: 300,
                  child: SingleChildScrollView(
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'enter your full name',
                            ),
                            keyboardType: TextInputType.text,
                            controller: _nameController,
                          ),
                        ),
                        Text(
                          "Contact Number",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'ex: +8801234567890',
                            ),
                            keyboardType: TextInputType.number,
                            controller: _phoneController,
                          ),
                        ),
                        Text(
                          "Age",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'ex: 30',
                            ),
                            keyboardType: TextInputType.number,
                            controller: _ageController,
                          ),
                        ),
                        Text(
                          "Location",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'Format: Area',
                            ),
                            keyboardType: TextInputType.text,
                            controller: _locationController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
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
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
