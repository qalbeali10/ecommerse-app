// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:ecommerse_app/screens/login_success/component/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,size: 20),
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            "Login Screen",
            textAlign: TextAlign.justify,
            style: TextStyle(
             // fontSize: 20,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
      ),
      ),
      body: LoginScreenBody(),
    );
  }
}
