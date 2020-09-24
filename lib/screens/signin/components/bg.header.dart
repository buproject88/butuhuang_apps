import 'package:butuhuang_app/size.config.dart';
import 'package:butuhuang_app/styles/styles.dart';
import 'package:flutter/material.dart';

class BackgroundHeading extends StatelessWidget {
  const BackgroundHeading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Container(
      height: size * 50,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(250, 100),
            bottomRight: Radius.elliptical(250, 100)),
      ),
    );
  }
}
