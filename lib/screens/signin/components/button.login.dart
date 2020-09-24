import 'package:butuhuang_app/size.config.dart';
import 'package:butuhuang_app/styles/styles.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final Function onTap;
  const ButtonLogin({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size * 5,
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: size * 1.6),
          ),
        ),
      ),
    );
  }
}