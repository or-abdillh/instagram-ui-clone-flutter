import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:instagram_ui_clone/screen/login_screen.dart';

import '../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: override_on_non_overriding_member
  initScreen(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 17);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: SvgPicture.asset(
              'ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 20,
          ),
          SleekCircularSlider(
            min: 0,
            max: 100,
            initialValue: 100,
            appearance: CircularSliderAppearance(
              infoProperties: InfoProperties(
                  mainLabelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 25,
              )),
              customColors: CustomSliderColors(
                  dotColor: Colors.white,
                  progressBarColor: Colors.grey,
                  shadowColor: Colors.white,
                  trackColor: Colors.white),
              spinnerDuration: 3,
              animDurationMultiplier: 10,
              animationEnabled: true,
              startAngle: 0.0,
              angleRange: 360,
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    ));
  }
}
