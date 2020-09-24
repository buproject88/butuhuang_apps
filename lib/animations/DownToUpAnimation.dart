import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../size.config.dart';

class DownToUp extends StatelessWidget {
  final double delay;
  final Widget child;

  DownToUp(this.delay, this.child);

   @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 200), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
        Duration(milliseconds: 500), Tween(begin: -5.0, end: 0.0),
        curve: Curves.bounceOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
          offset: Offset(0, animation["translateY"]), 
          child: child
        ),
      ),
    );
  }
}