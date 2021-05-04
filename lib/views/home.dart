import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/floors/floorsNorth.dart';
import 'package:pullup/views/floors/floorsSouth.dart';
import 'dart:async';

import 'package:pullup/views/floors/floorsWest.dart';
import 'package:pullup/views/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth = FirebaseAuth.instance;
  @required
  late String _timeString = "";
  late int _weekDay = 1;
  late String _dayOfWeek;
  late String _date = "";
  late String _year = "";
  late String _month = "";
  late String _day = "";
  late int _hour = 0;
  // late String _min;
  // late String _sec;

  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1),
        (Timer t) => {
              setState(() {
                _timeString = DateTime.now().toString();
                _date = _timeString.toString().split(" ")[0];
                _year = _date.split("-")[0];
                _month = _date.split("-")[1];
                _day = _date.split("-")[2];
                _hour = int.parse(_timeString
                    .toString()
                    .split(" ")[1]
                    .split(".")[0]
                    .split(":")[0]);
                if (_hour == 12) {
                  _hour = 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " PM";
                }
                if (_hour == 0 || _hour == 24) {
                  _hour = 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " AM";
                }
                if (_hour > 0 && _hour < 12) {
                  _hour = _hour;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " AM";
                }
                if (_hour > 12 && _hour < 24) {
                  _hour = _hour - 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " PM";
                }
                _weekDay = DateTime.now().weekday;
                if (_weekDay == 1) {
                  _dayOfWeek = "Monday";
                }

                if (_weekDay == 2) {
                  _dayOfWeek = "Tuesday";
                }

                if (_weekDay == 3) {
                  _dayOfWeek = "Wednesday";
                }

                if (_weekDay == 4) {
                  _dayOfWeek = "Thursday";
                }

                if (_weekDay == 5) {
                  _dayOfWeek = "Friday";
                }

                if (_weekDay == 6) {
                  _dayOfWeek = "Saturday";
                }

                if (_weekDay == 7) {
                  _dayOfWeek = "Sunday";
                }

                // _weekDay = d.weekday;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    var nowDate = new DateTime.now();
    //var formatterDate = new DateFormat('MM/dd/yyyy');
    // String formattedDate = formatterDate.format(nowDate);
    var nowTime = new DateTime.now();
    // var formatterTime = new DateFormat('hh:mm:ss a');
    //String formattedTime = formatterTime.format(nowTime);

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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
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
                              "Hi,",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 125.0, 0.0, 40.0),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Where will you park today',
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '?',
                                    style: TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.black,
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
                        height: 60.0,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                _month + "-" + _day + "-" + _year,
                                //formattedDate,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Current Day',
                                style: TextStyle(
                                  fontSize: 22.0,
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
                        height: 60.0,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                _timeString,
                                //_hour.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Current Time',
                                style: TextStyle(
                                  fontSize: 22.0,
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
                  SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // print("goes to north garage floors");
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NorthFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' North Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(width: 72.0),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "#",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // print("goes to south garage floors");
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' South Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 70.0,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "#",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // print("goes to west garage floors");
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => WestFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' West Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 82.0,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "#",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
