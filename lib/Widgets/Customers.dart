import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class Customers extends StatefulWidget {
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {

  Widget chart (double height, String number1, String number2) {
    return Column(
      children: <Widget>[
        Container(
          height: height,
          width: 5.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: MyColor.gold,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Text(
              number1,
              style: TextStyle(color: MyColor.white, fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text(
              number2,
              style: TextStyle(color: MyColor.gold, fontWeight: FontWeight.bold, fontSize: 14.0),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        'مشتریان',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Card(
                                color: Colors.grey[700],
                                elevation: 0.0,
                                margin: const EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                                  child: Text(
                                    '39%',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Text('تکمیل نشده', textAlign: TextAlign.end, style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.grey, fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('نفر', style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.grey, fontSize: 20)),
                              Text('1,280,54', style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.grey, fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                      Container(height: 50.0, width: 2.0, color: MyColor.grey, margin: const EdgeInsets.only(left: 10.0))
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Card(
                                color: MyColor.white,
                                elevation: 0.0,
                                margin: const EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                                  child: Text(
                                    '39%',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Text('تکمیل نشده', textAlign: TextAlign.end, style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.white, fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('نفر', style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.white, fontSize: 20)),
                              Text('1,280,54', style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.white, fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                      Container(height: 50.0, width: 2.0, color: MyColor.white, margin: const EdgeInsets.only(left: 10.0))
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 80.0),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('زن', style: TextStyle(color: MyColor.grey, fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('1,280,54', style: TextStyle(color: MyColor.white, fontWeight: FontWeight.bold, fontSize: 22.0)),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('39%', style: TextStyle(color: Colors.pinkAccent, fontSize: 30.0, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Container(height: 4.0, color: Colors.pinkAccent),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('مرد', style: TextStyle(color: MyColor.grey, fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('1,280,54', style: TextStyle(color: MyColor.white, fontWeight: FontWeight.bold, fontSize: 22.0)),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('39%', style: TextStyle(color: Colors.blue, fontSize: 30.0, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Container(height: 4.0, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        chart( 120.0, '>20', '10%'),
                        chart( 100.0, '20-25', '10%'),
                        chart( 170.0, '25-30', '10%'),
                        chart( 90.0, '30-35', '10%'),
                        chart( 190.0, '35-40', '10%'),
                        chart( 120.0, '40-45', '10%'),
                        chart( 140.0, '45<', '10%'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
