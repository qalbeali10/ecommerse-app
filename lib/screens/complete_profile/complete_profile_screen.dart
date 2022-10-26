// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:ecommerse_app/screens/complete_profile/component/complete_profile_screen_body.dart';
import 'package:flutter/material.dart';
class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: CompleteProfileScreenBody(),
    );
  }
}
