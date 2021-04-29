import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/home.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.redAccent;
      }
      return Color(0xFF019FBF);
    }

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: Color(0xFFE8EAE6),
        buttonBackgroundColor: Color(0xFF019FBF),
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.notifications, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AnnouncementsScreen()));
          } else if (index == 1) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeScreen()));
          } else {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SettingsScreen()));
          }
        },
      ),
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 75, 0, 45),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          color: Color(0xFF019FBF),
                        ),
                      ),
                    ]),
                  ))),
          //Spacer(),
          Container(
            child: Text(
              "MY ACCOUNT",
              style: TextStyle(
                  color: Color(0xFF019FBF),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.25),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
            onPressed: () => {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Email: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text('pullup@sjsu.edu   ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
            onPressed: () => {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Password    *******',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
            onPressed: () => {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(getColor),
            ),
            child: Text(
              'Change password',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 120.0,
          ),
          SizedBox(
              width: 120,
              height: 55,
              child: ElevatedButton(
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith(getColor),
                    elevation: MaterialStateProperty.all(5.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ))),
        ],
      )),
    ));
  }
}
