import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pullup/screens/forgotpassword.dart';
import 'package:pullup/screens/home.dart';
import 'package:pullup/screens/signup.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKeyLogIn = GlobalKey<FormState>();
  final formControllerEmail = TextEditingController();
  final formControllerPassword = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  void dispose() {
    formControllerEmail.dispose();
    formControllerPassword.dispose();
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
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid password.';
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
                          controller: formControllerPassword,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Forgot password?',
                                    style: TextStyle(
                                      color: Color(0xFF019FBF),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPasswordScreen()),
                                        );
                                      }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 156.0,
                    ),
                    Container(
                      child: Column(
                        children: [
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
                                onPressed: () async {
                                  if (_formKeyLogIn.currentState!.validate()) {
                                    print(formControllerEmail.text);
                                    print(formControllerPassword.text);
                                    try {
                                      UserCredential userCredentialLogIn =
                                          await auth.signInWithEmailAndPassword(
                                              email: formControllerEmail.text,
                                              password:
                                                  formControllerPassword.text);
                                      User user = auth.currentUser!;
                                      if (!user.emailVerified) {
                                        print('Please verify email to log in.');
                                      } else {
                                        print('User successfully logged in.');
                                      }
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        print('No user found with that email.');
                                      } else if (e.code == 'wrong-password') {
                                        print('Incorrect password.');
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
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen()),
                                        );
                                      }),
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
