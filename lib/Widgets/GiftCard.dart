import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class GiftCard extends StatefulWidget {
  @override
  _GiftCardState createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 150.0,
      child: Card(
        elevation: 3.0,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.credit_card,
                            size: 50.0,
                            color: MyColor.grey,
                          ),
                          Icon(
                            Icons.add,
                            size: 35.0,
                            color: MyColor.grey,
                          ),
                        ],
                      ),
                      Text(
                        'کارت های هدیه',
                        style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19 , color: MyColor.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(height: 130.0, width: 0.5, color: MyColor.grey),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.credit_card , size: 50),
                    Text('کارت های هدیه' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19),),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Container(
                height: 7.0,
                width: 190,
                decoration: BoxDecoration(
                    color: MyColor.gold,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0) , topLeft: Radius.circular(50.0))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
