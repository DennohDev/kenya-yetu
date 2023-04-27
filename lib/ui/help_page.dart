import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.number,
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
                              onPressed: () {},
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
