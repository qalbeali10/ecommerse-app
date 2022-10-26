// ignore_for_file: prefer_const_constructors

import 'package:ecommerse_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocailCard extends StatelessWidget {
  const SocailCard({
    Key? key,
     required this.icon,
     required this.press,
  }) : super(key: key);
    final String icon;
    final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfff5f6f9),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
