import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 175,
                ),
                Image.asset(
                  'images/logo.jpg',
                  width: 375,
                  height: 375,
                ),
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: 375,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Try Now'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Already a member? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color(0xFF019FBF),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('Pressed')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
