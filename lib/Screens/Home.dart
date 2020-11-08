import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vipon/Color/MyColor.dart';
import 'package:vipon/Widgets/Acceptor.dart';
import 'package:vipon/Widgets/Customers.dart';
import 'package:vipon/Widgets/OffersWidgets.dart';
import 'package:vipon/Widgets/CircleDoller.dart';
import 'package:vipon/Widgets/CreditPlanWidget.dart';
import 'package:vipon/Widgets/GradientCard.dart';
import 'package:vipon/Widgets/ReportCustomers.dart';
import 'package:vipon/Widgets/Score.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget casting(Size size) {
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    width: 106.0,
                    child: Stack(
                      children: <Widget>[
                        Text('200,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: MyColor.black)),
                        Positioned(right: 0.0, top: 0.0, child: Text('R', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.grey)))
                      ],
                    ),
                  ),
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

  Widget creditPlan(Size size) {
    return Container(
      width: size.width,
      child: Card(
        elevation: 3.0,
        color: MyColor.black,
        margin: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20.0),
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
                          CircleDoller(borderColor: MyColor.white, backgroundColor: MyColor.black, avatarColor: MyColor.white),
                          SizedBox(height: 10.0),
                          Text('طرح اعتباری' , style: TextStyle
                            (color: Colors.white , fontWeight: FontWeight.bold, fontSize: 25),),
                        ],
                      ),
                    ],
                  ),
                  new CircularPercentIndicator(
                    radius: 130.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 10.0,
                    percent: 0.4,
                    center: Text(
                      "12,500",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0 , color: Colors.white),
                    ),
                    circularStrokeCap: CircularStrokeCap.square,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.red,
                  )

                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Card(
                elevation: 0.0,
                color: MyColor.dark,
                margin: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      CreditPlanWidget(color: MyColor.gold , text: 'VIP'),
                      Container(height: 1.0, width: size.width, color: MyColor.black),
                      CreditPlanWidget(color: MyColor.yellow , text: 'طلایی',),
                      Container(height: 1.0, width: size.width, color: MyColor.black),
                      CreditPlanWidget(color: MyColor.grey , text: 'نقره ای'),
                      Container(height: 1.0, width: size.width, color: MyColor.black),
                      CreditPlanWidget(color: MyColor.redBrown , text: 'برنزی',),
                      Container(height: 1.0, width: size.width, color: MyColor.black),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget body(Size size) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: size.width,
            color: MyColor.dark,
          ),
          Container(
            width: size.width,
            child: Card(
              elevation: 0.0,
              margin: const EdgeInsets.only(top: 270.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0))),
              color: MyColor.darkWhite,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        casting(size),
                        SizedBox(height: 20.0),
                        creditPlan(size),
                        SizedBox(height: 10.0),
                        GradientCard(child: OffersWidgets(title: 'آفرها',)),
                        SizedBox(height: 10.0),
                        GradientCard(child: OffersWidgets(title: 'کارت هدیه',)),
                        SizedBox(height: 10),
                        Score(),
                        SizedBox(height: 10),
                        GradientCard(child: Customers()),
                        SizedBox(height: 10.0),
                        Acceptor(),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  ReportCustomers(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: body(size),
    );
  }
}
