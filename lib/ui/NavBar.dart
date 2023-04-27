import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kenya_yetu/const/AppColors.dart';
import 'package:kenya_yetu/ui/User_model.dart';
import 'package:kenya_yetu/ui/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('${_auth.currentUser!.displayName}'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(),
            ),
            decoration: BoxDecoration(
              color: green,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );},
            child: const ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }
}
