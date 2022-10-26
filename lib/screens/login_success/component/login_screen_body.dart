// ignore_for_file: prefer_const_constructors

import 'package:ecommerse_app/componenets/default_button.dart';
import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight!*0.04,
        ),
        Image.asset('assets/images/success.png',
        height: SizeConfig.screenHeight!*0.4,
        ),
         SizedBox(
          height: SizeConfig.screenHeight!*0.08,
        ),
        Text('Login Success',
        style:TextStyle(
          fontSize: getProportionateScreenWidth(30),
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ) ,
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth!*0.6,
          child: DefaultButton(
            text: 'Back To Home',
            press: (){}
            ),
        ),
        Spacer(),
      ],
    );
  }
}
