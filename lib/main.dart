import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pullup/screens/forgotpassword.dart';
import 'package:pullup/screens/login.dart';
import 'package:pullup/screens/signup.dart';
import 'package:pullup/eol/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      home: LogInScreen(),
    ),
  );

  // runApp(WelcomeScreen());
  // runApp(SignUpScreen());
  // runApp(LogInScreen());
  // runApp(ForgotPasswordScreen());
}
