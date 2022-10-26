// ignore_for_file: prefer_const_constructors

import 'package:ecommerse_app/screens/forgot_password/components/forgot_password_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Forgot Password",
            textAlign: TextAlign.center,
            style: TextStyle(
             // fontSize: 20,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
        ),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
