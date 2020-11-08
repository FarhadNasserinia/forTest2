import 'package:flutter/material.dart';

class CircleDoller extends StatefulWidget {
  
  final Color borderColor ;
  final Color backgroundColor ;
  final Color avatarColor;

  const CircleDoller({Key key, @required this.borderColor , @required this.backgroundColor , @required this.avatarColor}) : super(key: key);
  
  @override
  _CircleDollerState createState() => _CircleDollerState();
}

class _CircleDollerState extends State<CircleDoller> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: widget.borderColor,
      child: CircleAvatar(
          radius: 26,
          backgroundColor: widget.backgroundColor,
          child: Icon(Icons.attach_money , color: widget.avatarColor , size: 40.0)),
    );
  }
}

