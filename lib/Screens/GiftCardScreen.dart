import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';
import 'package:vipon/Utils/WebService.dart';
import 'package:vipon/Widgets/GiftCard.dart';

class CardScreenPage extends StatefulWidget {
  @override
  _CardScreenPageState createState() => _CardScreenPageState();
}

class _CardScreenPageState extends State<CardScreenPage> {

  bool visibleHandler = true;

  Map data = new Map();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData () async {
    Dio dio = Dio();
    dio.options.headers['Authorization'] = ['Token 1e1444c63fe70b8bdb3ef96da49888402438d83e'];
    Response response = await dio.get(WebService.CardApi);
    setState(() {
      data = response.data;
    });
    print(response.data);
  }

  Widget listWidget() {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Visibility(
          visible: visibleHandler,
          child: Container(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 7.0,
                        decoration:
                        BoxDecoration(color: MyColor.green, borderRadius: BorderRadius.only(topRight: Radius.circular(50.0), bottomRight: Radius.circular(50.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('مبلغ کارت:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.black)),
                                SizedBox(width: 20.0),
                                Container(
                                  width: 106.0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Text('200,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: MyColor.black)),
                                      Positioned(
                                          right: 0.0, top: 0.0, child: Text('R', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: MyColor.grey)))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('موجودی:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.green)),
                                SizedBox(width: 20.0),
                                Container(
                                  width: 106.0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Text('200,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: MyColor.green)),
                                      Positioned(
                                        right: 0.0,
                                        top: 0.0,
                                        child: Text(
                                          'R',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                            color: MyColor.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        visibleHandler = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.keyboard_arrow_down, size: 40.0, color: MyColor.grey),
                    ),
                  )
                ],
              ),
            ),
          ),
          replacement: Container(
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                width: 7.0,
                                decoration:
                                BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.only(topRight: Radius.circular(50.0), bottomRight: Radius.circular(50.0))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text('مبلغ کارت:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.white)),
                                        SizedBox(width: 20.0),
                                        Container(
                                          width: 106.0,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: <Widget>[
                                              Text('200,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: MyColor.white)),
                                              Positioned(
                                                  right: 0.0, top: 0.0, child: Text('R', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: MyColor.grey)))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('موجودی:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.green)),
                                        SizedBox(width: 20.0),
                                        Container(
                                          width: 106.0,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: <Widget>[
                                              Text('200,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: MyColor.green)),
                                              Positioned(
                                                right: 0.0,
                                                top: 0.0,
                                                child: Text(
                                                  'R',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: MyColor.grey,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                visibleHandler = true;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Icon(Icons.keyboard_arrow_up, size: 40.0, color: MyColor.grey),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: MyColor.dark,
                          margin: const EdgeInsets.all(10.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  color: Colors.red,
                                  child: Image.network(''),

                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('1234-1234-1234-1234' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 26.0 , color: MyColor.white),),
                                    Text('گلدن وایز goldenwise' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0 , color: MyColor.grey),),
                                    Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                      color: MyColor.grey,
                                      child: Card(
                                        margin: const EdgeInsets.all(1.0),
                                        color: MyColor.dark,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 2.0 , vertical: 1.0),
                                          child: Text('1399/12/04' , style: TextStyle(color: MyColor.grey , fontSize: 19.0 , fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 80.0,
                                child: Card(
                                  color: MyColor.dark,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.clear , size: 35, color: MyColor.white),
                                        SizedBox(width: 15.0,),
                                        Text('تراکنش ها' , style: TextStyle(color: MyColor.white , fontWeight: FontWeight.bold , fontSize: 22.0),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 80.0,
                                child: Card(
                                  color: Colors.red[500],
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.clear , size: 35, color: MyColor.white),
                                        SizedBox(width: 15.0,),
                                        Text('خاموش' , style: TextStyle(color: MyColor.white , fontWeight: FontWeight.bold , fontSize: 22.0),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget myListView () {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context , index) {
      return listWidget();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              stops: [0.0, 0.2],
              colors: [MyColor.black, MyColor.darkWhite],
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      size: 40.0,
                      color: MyColor.white,
                    ),
                    Text('کارت هدیه', style: TextStyle(color: MyColor.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Icon(Icons.menu, size: 40.0, color: MyColor.white),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GiftCard(),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: MyColor.white,
                        onPressed: () {},
                        child: Icon(
                          Icons.menu,
                          color: MyColor.gold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'کارت هدیه',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.grey),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '5',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(child: myListView())
              ],
            ),
          ),
        ),
    );
  }
}
