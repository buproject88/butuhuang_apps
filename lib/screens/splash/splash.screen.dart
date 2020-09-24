import 'dart:async';

import 'package:butuhuang_app/screens/signin/signin.dart';
import 'package:butuhuang_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../size.config.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Get.off(SignInScreen())
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size * 2.5),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: size * 15,
                  width: size * 15,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/images/logo_main.png',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SpinKitFadingCircle(
                      color: yellow,
                      size: size * 4,
                    ),
                    SizedBox(
                      height: size * 0.5,
                    ),
                    Text(
                      'Versi 1.0.0',
                      style: TextStyle(color: yellow),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
