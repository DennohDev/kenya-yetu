import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';
import 'package:kenya_yetu/ui/request.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
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
                        height: dh * 0.15,
                        width: dw * 0.8,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "What is your current Location",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Click here to access your current location",
                                    style: TextStyle(
                                        color: green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
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
                                        child:
                                            Center(child: Text("Need Help")))),
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
                            child: Text(
                              "Red alert move to safe zone",
                              style: TextStyle(
                                color: green,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Evacuate Immidiately",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Masinga"),
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
                            child: Text(
                              "Flood Alert, Move to higher areas",
                              style: TextStyle(
                                color: green,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Evacuate Now",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Mombasa"),
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
                            child: Text(
                              "Earthquake Alert: Leave storey buildings",
                              style: TextStyle(
                                color: green,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Evacuate within the next hour",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Kitale"),
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
