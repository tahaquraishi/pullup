import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pullup/screens/forgotpassword.dart';
import 'package:pullup/screens/login.dart';
import 'package:pullup/screens/signup.dart';
import 'package:pullup/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // runApp(WelcomeScreen());
  // runApp(SignUpScreen());
  runApp(LogInScreen());
  // runApp(ForgotPasswordScreen());
}
