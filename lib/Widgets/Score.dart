import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';
import 'package:vipon/Widgets/CircleDoller.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: MyColor.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: MyColor.black,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleDoller(borderColor: MyColor.gold, backgroundColor: MyColor.white, avatarColor: MyColor.gold),
                      SizedBox(height: 10.0),
                      Text(
                        'امتیاز ها',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 120.0 , width: 0.5, color: MyColor.grey),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('4.7' , style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold , color: MyColor.black)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star , color: MyColor.gold, size: 30),
                      Icon(Icons.star , color: MyColor.gold, size: 30),
                      Icon(Icons.star_border , color: MyColor.gold,size: 30),
                      Icon(Icons.star_border , color: MyColor.gold,size: 30),
                      Icon(Icons.star_border , color: MyColor.gold,size: 30),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('نفر' , style: TextStyle(color: MyColor.grey , fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('2557' , style: TextStyle(fontSize: 24.0 , fontWeight: FontWeight.bold , color: MyColor.black)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
