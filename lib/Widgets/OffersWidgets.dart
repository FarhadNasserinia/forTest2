import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vipon/Color/MyColor.dart';

class OffersWidgets extends StatefulWidget {
  final String title ;

  const OffersWidgets({Key key, @ required this.title}) : super(key: key);

  @override
  _OffersWidgetsState createState() => _OffersWidgetsState();
}

class _OffersWidgetsState extends State<OffersWidgets> {

  Widget threeText (Color color , String title) {
    return Column(
      children: <Widget>[
        Text(title , style: TextStyle(color: color ,fontWeight: FontWeight.bold , fontSize: 16)),
        Text('1,280,54' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 24.0 , color: MyColor.white)),
        Card(
          color: Colors.grey[700],
          elevation: 0.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 0.0),
            child: Text('39%' , textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.bold),),
          ),

        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: MyColor.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        size: 80,
                        color: MyColor.white,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        widget.title,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              CircularPercentIndicator(
                radius: 130.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 10.0,
                percent: 0.4,
                center: Text(
                  "12,500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
                ),
                circularStrokeCap: CircularStrokeCap.square,
                backgroundColor: Colors.grey,
                progressColor: Colors.red,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0 , vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              threeText(MyColor.grey , 'باطل شده'),
              Container(height: 60.0, width: 1.0, color: MyColor.black),
              threeText(MyColor.red , 'مصرف شده'),
              Container(height: 60.0, width: 1.0, color: MyColor.black),
              threeText(MyColor.green , 'فعال'),
            ],
          ),
        )
      ],
    );
  }
}