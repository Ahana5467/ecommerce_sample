import 'dart:async';

import 'package:ecommerce_sample/view/onboarding_screen/onboarding_screen.dart';
import 'package:ecommerce_sample/view/utils/color_constants.dart';
import 'package:ecommerce_sample/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), 
    () {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context) => OnboardingScreen(),));
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstant.MYAPPLOGO,
                  height: 100,
                  width: 125,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 9,),
                Text(
                  "Stylish",
                style: TextStyle(
                  color: ColorConstants.PRIMARY,
                  fontSize:40,
                   fontWeight: FontWeight.bold),)
              ],
            ),
      ),
    );
  }
}