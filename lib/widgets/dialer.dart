import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DialerButton extends StatelessWidget {
  final String phoneNumber;

  const DialerButton({super.key, required this.phoneNumber});

  void _launchDialer() async {
    bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
    if (!res!) {
      throw 'Could not launch the dialer';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchDialer,
      child: const Text('Open Dialer'),
    );
  }
}
