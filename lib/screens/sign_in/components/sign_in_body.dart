// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, curly_braces_in_flow_control_structures, camel_case_types, avoid_returning_null_for_void
import 'package:ecommerse_app/componenets/custom_suffix_icon.dart';
import 'package:ecommerse_app/componenets/default_button.dart';
import 'package:ecommerse_app/componenets/form_error.dart';
import 'package:ecommerse_app/componenets/no_account_text.dart';
import 'package:ecommerse_app/componenets/socail_card.dart';
import 'package:ecommerse_app/constant.dart';
import 'package:ecommerse_app/screens/forgot_password/forgot_password.dart';
import 'package:ecommerse_app/screens/sign_in/components/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocailCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocailCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocailCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                NoAccountText(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

