import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';
import 'package:kenya_yetu/ui/help_page.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                height: 60,
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
                                "Post how you can Help",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HelpPage()));
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
                                "Ready to Give Food",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Quantity: 10kg Maize",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Moyale"),
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
                                "Ready to Donate Blankets",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
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
                                child: Text("Location: Kisumu"),
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
                                "Ready to Pay Medical Bill",
                                style: TextStyle(
                                    color: green, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Quantity: Ksh1000"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Location: Nairobi"),
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
