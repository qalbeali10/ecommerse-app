// ignore_for_file: prefer_const_constructors

import 'package:ecommerse_app/componenets/default_button.dart';
import 'package:ecommerse_app/constant.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize:24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4FocusNode!.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.15,
          ),
          DefaultButton(text: 'Continue', press: () {}),
        ],
      ),
    );
  }
}
