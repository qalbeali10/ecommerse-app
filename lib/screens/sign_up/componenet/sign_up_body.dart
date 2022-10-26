// ignore_for_file: prefer_const_constructors, unused_field, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, unused_import

import 'package:ecommerse_app/componenets/custom_suffix_icon.dart';
import 'package:ecommerse_app/componenets/default_button.dart';
import 'package:ecommerse_app/componenets/form_error.dart';
import 'package:ecommerse_app/componenets/socail_card.dart';
import 'package:ecommerse_app/constant.dart';
import 'package:ecommerse_app/screens/sign_up/componenet/sign_up_form.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
             SizedBox(
                height: SizeConfig.screenHeight! * 0.02,
              ),
              Text(
                "Register Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Completed your detail \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),
              SignUpForm(),
               SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
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
                SizedBox(height: getProportionateScreenHeight(20),),
                Text('By Continuing Your Confirm that you agree \nwith our term and conditions',
                textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

