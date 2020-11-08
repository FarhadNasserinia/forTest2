import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class GradientContainer extends StatefulWidget {
  final Widget child ;

  const GradientContainer({Key key, this.child}) : super(key: key);

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          stops: [0.0, 0.2],
          colors: [MyColor.black, MyColor.darkWhite],
        ),
      ),
      child: widget.child,
    );
  }
}
