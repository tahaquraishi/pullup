import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/home.dart';
import 'package:pullup/views/settings.dart';

class NorthSectionsFloor2 extends StatefulWidget {
  @override
  _NorthSectionsFloor2State createState() => _NorthSectionsFloor2State();
}

class _NorthSectionsFloor2State extends State<NorthSectionsFloor2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
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
        child: Column(children: [
          Container(
              child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                  child: Text(
                    "North",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 20.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Garage',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80.0,
                            color: Color(0xFF019FBF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          // SizedBox(
          //   height: 10.0,
          // ),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 184.0,
                height: 50.0,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '#',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Floor 2 Vacancy',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 184.0,
                height: 50.0,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'hh:mm:ss',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Last Updated',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section A',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section B',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section C',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section D',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section E',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section F',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section G',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section H',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section J',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
