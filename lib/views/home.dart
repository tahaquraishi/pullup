import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';
import 'package:pullup/views/login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Container(
              child: SizedBox(
                width: 375.0,
                height: 50.0,
                child: ElevatedButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Color(0xFF019FBF),
                    ),
                    onPressed: () async {
                      await auth.signOut();
                      // print('User successfully logged out.');
                      Fluttertoast.showToast(
                        msg: 'User logged out.',
                        gravity: ToastGravity.TOP,
                        toastLength: Toast.LENGTH_LONG,
                        timeInSecForIosWeb: 3,
                      );
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LogInScreen()));
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
