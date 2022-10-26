// ignore_for_file: use_key_in_widget_constructors, unused_import, deprecated_member_use, prefer_const_constructors, duplicate_ignore

import 'package:ecommerse_app/screens/sign_in/components/sign_in_body.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,size: 20),
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            "Sign In",
            textAlign: TextAlign.justify,
            style: TextStyle(
             // fontSize: 20,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
