import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKeyForgotPassword = GlobalKey<FormState>();
  final formControllerEmail = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  void dispose() {
    formControllerEmail.dispose();
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
                      "Forgot password?",
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
                      "Let's reset it.",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKeyForgotPassword,
                child: Column(
                  children: [
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !(EmailValidator.validate(value))) {
                              return 'Please enter a valid email.';
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
                    SizedBox(
                      height: 442,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 375.0,
                            height: 50.0,
                            child: ElevatedButton(
                                child: Text(
                                  'Reset Password',
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
                                  if (_formKeyForgotPassword.currentState!
                                      .validate()) {
                                    try {
                                      await auth.sendPasswordResetEmail(
                                          email: formControllerEmail.text);
                                      print('Password request email sent.');
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        print(
                                            'No user exists with that email.');
                                      }
                                    } catch (e) {
                                      print(e);
                                    }
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
                                    text: 'Log In!',
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
