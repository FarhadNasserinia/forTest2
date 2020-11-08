import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

import 'CircleDoller.dart';

class Acceptor extends StatefulWidget {
  @override
  _AcceptorState createState() => _AcceptorState();
}

class _AcceptorState extends State<Acceptor> {

  Widget handlingText (Size size) {
    return Container(
      height: 200.0,
      width: size.width,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('موجودی', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.grey)),

                  Row(
                    children: <Widget>[
                      OutlineButton(
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: Text('تراکنش ها', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: MyColor.grey))),
                      SizedBox(width: 5.0),
                      OutlineButton(
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: Text('افزایش', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: MyColor.grey))),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 160.0,
              width: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'روز مانده',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: MyColor.grey),
                  ),
                  Text(
                    '30',
                    style: TextStyle(fontSize: 52.0, fontWeight: FontWeight.bold, color: MyColor.gold),
                  ),
                  OutlineButton(
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                      child: Text('افزایش', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: MyColor.grey))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                        'پذیرنده',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 120.0 , width: 0.5, color: MyColor.grey , margin: const EdgeInsets.only(right: 40),),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('صندوق باز' , style: TextStyle(fontSize: 24.0 , fontWeight: FontWeight.bold , color: MyColor.gold)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: 106.0,
                      child: Stack(
                        children: <Widget>[
                          Text('185,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: MyColor.black)),
                          Positioned(right: 0.0, top: 0.0, child: Text('R', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.grey)))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
