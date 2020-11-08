import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class GradientCard extends StatefulWidget {
  final Widget child ;
  const GradientCard({Key key, @required this.child}) : super(key: key);

  @override
  _GradientCardState createState() => _GradientCardState();
}

class _GradientCardState extends State<GradientCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [MyColor.black, MyColor.dark],
        ),
      ),
      child: widget.child,
    );
  }
}
