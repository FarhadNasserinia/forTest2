import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class CreditPlanWidget extends StatefulWidget {
  final Color color ;
  final String text;

  const CreditPlanWidget({Key key, @ required this.color , @required this.text}) : super(key: key);
  @override
  _CreditPlanWidgetState createState() => _CreditPlanWidgetState();
}

class _CreditPlanWidgetState extends State<CreditPlanWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
            color: widget.color,
            elevation: 0.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 0.0),
              child: Text('39%' , textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),),
            ),

          ),
          SizedBox(width: 10.0,),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('نفر' , style: TextStyle(color: MyColor.grey),),
                  Text('10,280,54' , style: TextStyle(color: Colors.white , fontSize: 24 , fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      width: 70,
                      margin: const EdgeInsets.only(right: 30.0),
                      child: Text(widget.text ,textAlign: TextAlign.end, style: TextStyle(color: widget.color , fontSize: 20 , fontWeight: FontWeight.bold),)),
                  Container(
                    height: 100.0,
                    width: 5.0,
                    color: widget.color,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
