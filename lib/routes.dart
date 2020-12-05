import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/sign_in_success/components/sign_in_success.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/signin/sign_in_screen.dart';

// we use name route
// all our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignInSuccess.routeName: (context) => SignInSuccess(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
