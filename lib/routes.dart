// ignore_for_file: prefer_const_constructors
import 'package:ecommerse_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerse_app/screens/forgot_password/forgot_password.dart';
import 'package:ecommerse_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerse_app/screens/otp/otp_screen.dart';
import 'package:ecommerse_app/screens/sign_in/components/sign_in_screen.dart';
import 'package:ecommerse_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerse_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context)=> LoginSuccessScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  CompleteProfileScreen.routeName:(context)=>CompleteProfileScreen(),
  OtpScreen.routeName:(context)=>OtpScreen(),
  
};
