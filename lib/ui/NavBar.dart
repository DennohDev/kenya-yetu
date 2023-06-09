import 'package:flutter/material.dart';
import 'package:kenya_yetu/const/AppColors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kenya_yetu/ui/splash_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
User? _currentUser;
  @override
  void initState() {
    super.initState();
    _getCurrentUser();
  }
  void _getCurrentUser() {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;
    setState(() {
      _currentUser = user;
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
            accountName: Text(_currentUser!.displayName ?? ''),
            accountEmail: Text(_currentUser!.email ?? ''),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(),
            ),
            decoration: BoxDecoration(
              color: green,
            ),
          ),

          InkWell(
            child: const ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
            ),
            onTap: () {
              Navigator.push(
            context, MaterialPageRoute(builder: (_) => SplashScreen()));
            },
          ),
        ],
      ),
    );
  }
}
