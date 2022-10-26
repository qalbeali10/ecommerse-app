// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:ecommerse_app/screens/otp/components/otp_screen_body.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = '/otp_screen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,size: 20),
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Center(
            child: Text(
              "OTP Verification",
             // textAlign: TextAlign.justify,
              style: TextStyle(
               // fontSize: 20,
                color: Colors.grey.withOpacity(0.9),
              ),
            ),
          ),
        ),
      ),
      body: OtpScreenBody(),
    ); 
}
}