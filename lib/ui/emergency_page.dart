import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../const/AppColors.dart';
class EmergencyPage extends StatefulWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  final TextEditingController _numberCtrl =TextEditingController();
  final TextEditingController _numberCtr2 = TextEditingController();
  final TextEditingController _numberCtr3 = TextEditingController();
  final TextEditingController _numberCtr4 = TextEditingController();
  final TextEditingController _numberCtr5 = TextEditingController();
  final TextEditingController _numberCtr6 = TextEditingController();
  final TextEditingController _numberCtr7 = TextEditingController();


  void caller() {
    super.initState();
    _numberCtrl.text='112';
    _numberCtr2.text='999';
    _numberCtr3.text='0202344599';
    _numberCtr4.text='+254203950000';
    _numberCtr5.text='0721225285';
    _numberCtr6.text='1-800-985-5990';
    _numberCtr7.text='9711077372';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: const Text("Emergency Contacts",
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
                child:  Text("NATIONAL EMERGENCY",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                  onPressed:()async{
                    FlutterPhoneDirectCaller.callNumber(_numberCtr2.text);
                  },
                  child:  Text("NATIONAL POLICE",style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                  onPressed:()async{
                    FlutterPhoneDirectCaller.callNumber(_numberCtr3.text);
                  },
                  child:  Text("FIRE BRIGADE",style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                  onPressed:()async{
                    FlutterPhoneDirectCaller.callNumber(_numberCtr4.text);
                  },
                  child:  Text("RED CROSS",style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                  onPressed:()async{
                    FlutterPhoneDirectCaller.callNumber(_numberCtr5.text);
                  },
                  child:  Text("ST JOHN'S AMBULANCE",style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr6.text);
                },
                child:  Text("DISASTER DISTRESS HOTLINE",style: TextStyle(color: Colors.black)),),
            ),
          ),
          const SizedBox(height: 35.0,),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child:  TextButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr7.text);
                },
                child:  Text("FLOOD HELPLINE",style: TextStyle(color: Colors.black)),),
            ),
          ),
        ],
      ),
    );

  }
}

