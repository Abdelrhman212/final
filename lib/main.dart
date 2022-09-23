import 'package:final_project/provider/login_provideer.dart';
import 'package:final_project/splah_screan/Main_Splash_Screan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/screan_15.dart';

void main() {

  runApp( const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (BuildContext context) =>Login_provider(),)
    ],child:     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashSCREAN(),
    ),);

  }
}


