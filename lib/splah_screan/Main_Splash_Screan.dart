import 'package:final_project/custom/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

import '../home/introduction_screan.dart';

class SplashSCREAN extends StatelessWidget {
  const SplashSCREAN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
            body: EasySplashScreen(
      logo: Image.asset(
        'assets/image/logo.png',
        width: 200,
        height: 200,
      ),
      durationInSeconds: 4,
      showLoader: false,
      navigator:  IntroductionSCREAN(),
      gradientBackground: LinearGradient(
          colors: [Custom_Colors.start_gradint, Custom_Colors.end_gradint],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
    )));
  }
}
