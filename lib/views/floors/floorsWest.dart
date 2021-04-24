import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

class WestFloors extends StatefulWidget {
  @override
  _WestFloorsState createState() => _WestFloorsState();
}

class _WestFloorsState extends State<WestFloors> {
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
          onTap: (index) {},
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
                          "West",
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
                  Container(
                    width: 293.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      border: Border.all(
                        color: Color(0xFF019FBF),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      shape: BoxShape.circle,
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
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 293.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      border: Border.all(
                        color: Color(0xFF019FBF),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      shape: BoxShape.circle,
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
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 293.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      border: Border.all(
                        color: Color(0xFF019FBF),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      shape: BoxShape.circle,
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
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 293.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      border: Border.all(
                        color: Color(0xFF019FBF),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      shape: BoxShape.circle,
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
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 293.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      border: Border.all(
                        color: Color(0xFF019FBF),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      shape: BoxShape.circle,
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
            ],
          ),
        ),
      ),
    );
  }
}
