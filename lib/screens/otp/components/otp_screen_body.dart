// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_brace_in_string_interps, unused_local_variable, use_key_in_widget_constructors
import 'dart:convert';
import 'package:ecommerse_app/componenets/default_button.dart';
import 'package:ecommerse_app/constant.dart';
import 'package:ecommerse_app/screens/otp/components/otp_form.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreenBody extends StatelessWidget {
 // const OtpScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                "Otp Verification",
                style: headingStyle,
              ),
              Text(
                "We send your Code to +92 332 954 ***",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              GestureDetector(
                  onTap: () {
                    // resend your OTP
                  },
                  child: Text(
                    'Resend OTP Code',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text('This Code Will Expired In'),
        // TweenAnimationBuilder(
        //   tween: Tween(begin: 30.0, end: 0),
        //   duration: Duration(seconds: 30),
        //   builder: (_,value, child) =>
        //   //  Text(
        //   //   "00:${value!.}",
        //   //   style: TextStyle(color: kPrimaryColor),
        //   // ),
        //   // onEnd: () {},
        // ),
      ],
    );
  }
}
