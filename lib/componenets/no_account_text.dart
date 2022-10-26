// ignore_for_file: unused_import

import 'package:ecommerse_app/constant.dart';
import 'package:ecommerse_app/screens/forgot_password/forgot_password.dart';
import 'package:ecommerse_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style:
              TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        SizedBox(width: getProportionateScreenWidth(5),),
        GestureDetector(
          onTap:() => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
