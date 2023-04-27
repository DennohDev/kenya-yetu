import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';
import 'package:kenya_yetu/ui/request.dart';

class HelpPeople extends StatefulWidget {
  @override
  _HelpPeopleState createState() => _HelpPeopleState();
}

class _HelpPeopleState extends State<HelpPeople> {
  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    double dw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Material(
                      elevation: 10,
                      child: Container(
                        height: dh * 0.12,
                        width: dw * 0.8,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Request for help",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Requests()));
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(colors: [
                                              Color(0xFFA2D5C5),
                                              Color(0xFF318B6F),
                                            ])),
                                        child: Center(child: Text("Go")))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Need food",
                                style: TextStyle(
                                  color: green,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Quantity: 100"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Kiserian"),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Need blankets",
                                style: TextStyle(
                                  color: green,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Quantity: 50"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Kapenguria"),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Need Medical Help",
                                style: TextStyle(
                                  color: green,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Quantity: KSh4000"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Kapsabet"),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "I am searching for shelter",
                                style: TextStyle(
                                  color: green,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Quantity: 10 people "),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Kwale"),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
