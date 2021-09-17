import 'package:android_intent/android_intent.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;
import 'package:store_redirect/store_redirect.dart';
import 'package:splashscreen/splashscreen.dart';

import 'main.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(
seconds:6,
      navigateAfterSeconds: MyApp(),
      image: new Image.asset('assets/images/202.png'),
      backgroundColor: Colors.black,
      photoSize: 100.0,
    ));
  }
}
