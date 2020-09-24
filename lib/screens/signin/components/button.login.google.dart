import 'package:butuhuang_app/size.config.dart';
import 'package:butuhuang_app/styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class ButtonLoginGoogle extends StatelessWidget {
  final Function onTap;
  const ButtonLoginGoogle({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size * 5,
        decoration: BoxDecoration(
          border: Border.all(color: blue),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '${Constant.textOrLogin}',
            style: TextStyle(color: blue, fontSize: size * 1.6),
          ),
        ),
      ),
    );
  }
}
