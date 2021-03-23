import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKeyLogIn = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
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
                          "Hello",
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
                            const EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 0.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'There',
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
              SizedBox(
                height: 100.0,
              ),
              Form(
                key: _formKeyLogIn,
                child: Column(
                  children: [
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.mail_outline,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Email',
                          ),
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Password',
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Forgot password?',
                                  style: TextStyle(
                                    color: Color(0xFF019FBF),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () =>
                                        print('Pressed "Forgot password?".')),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 156.0,
                    ),
                    SizedBox(
                      width: 375.0,
                      height: 50.0,
                      child: ElevatedButton(
                          child: Text(
                            'Log In',
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
                          onPressed: () {
                            if (_formKeyLogIn.currentState!.validate()) {
                              print('Pressed "Log In" and validated.');
                            }
                          }),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'New member? ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'Sign Up!',
                              style: TextStyle(
                                color: Color(0xFF019FBF),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('Pressed "Sign Up!".')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
