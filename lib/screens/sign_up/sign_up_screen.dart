// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:ecommerse_app/screens/sign_up/componenet/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,size: 20),
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            "Sign Up",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
        ),
      ),
      body:SignUpBody() ,
    );
  }
}
