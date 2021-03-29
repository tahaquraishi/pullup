import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKeySignUp = GlobalKey<FormState>();
  final formControllerEmail = TextEditingController();
  final formControllerPassword = TextEditingController();
  final formControllerConfirmPassword = TextEditingController();

  @override
  void dispose() {
    formControllerEmail.dispose();
    formControllerPassword.dispose();
    formControllerConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                    child: Text(
                      "Hi Friend!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 25.0),
                    child: Text(
                      "Let's get started.",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKeySignUp,
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
                          controller: formControllerEmail,
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
                              Icons.lock_open,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Password',
                          ),
                          controller: formControllerPassword,
                          obscureText: true,
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
                            labelText: 'Confirm Password',
                          ),
                          controller: formControllerConfirmPassword,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 202.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 375.0,
                            height: 50.0,
                            child: ElevatedButton(
                                child: Text(
                                  'Sign Up',
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
                                  if (_formKeySignUp.currentState!.validate()) {
                                    print(formControllerEmail.text);
                                    print(formControllerPassword.text);
                                    print(formControllerConfirmPassword.text);
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
                                  text: 'Already a member? ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    text: 'Login!',
                                    style: TextStyle(
                                      color: Color(0xFF019FBF),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          () => print('Pressed "Log In!".')),
                              ],
                            ),
                          ),
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
