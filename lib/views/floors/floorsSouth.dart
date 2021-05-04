import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/home.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor1.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor2.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor3.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor4.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor5.dart';
import 'package:pullup/views/settings.dart';

class SouthFloors extends StatefulWidget {
  @override
  _SouthFloorsState createState() => _SouthFloorsState();
}

class _SouthFloorsState extends State<SouthFloors> {
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => AnnouncementsScreen()));
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
            children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                        child: Text(
                          "South",
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
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 20.0),
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
                ),
              ),
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
                            'Vacant Spaces',
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
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor5()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
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
                          'Floor 5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor5()));
                    },
                    child: Container(
                      width: 75.0,
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor4()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
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
                          'Floor 4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor4()));
                    },
                    child: Container(
                      width: 75.0,
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor3()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
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
                          'Floor 3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor3()));
                    },
                    child: Container(
                      width: 75.0,
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor2()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
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
                          'Floor 2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor2()));
                    },
                    child: Container(
                      width: 75.0,
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor1()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
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
                          'Floor 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor1()));
                    },
                    child: Container(
                      width: 75.0,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
