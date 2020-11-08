import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:vipon/Color/MyColor.dart';
import 'package:quiver/async.dart';
import 'package:vipon/Utils/WebService.dart';
import 'package:vipon/Widgets/GradientContainer.dart';
import 'package:vipon/model/OffersModel.dart';

class OfferPage extends StatefulWidget {
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  int page;
  PaginationViewType paginationViewType;
  GlobalKey<PaginationViewState> key;

  double animatedHeight = 0.0;
  List data = List();
  Results results ;
  int _start = 60;
  int _secound = 60;
  int minutes = 60;
  int hours = 24;
  int day = 20;

  void _startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: _start),
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _secound = _start - duration.elapsed.inSeconds;
        minutes = _start - duration.elapsed.inMinutes;
        hours = _start - duration.elapsed.inHours;
        day = _start - duration.elapsed.inDays;
      });
    });

    sub.onDone(() {
      setState(() {
        _start = 60;
        _secound = 0;
      });
      sub.cancel();
    });
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.arrow_back_ios,
            size: 40.0,
            color: MyColor.white,
          ),
          Text('آفر (تخفیف)', style: TextStyle(color: MyColor.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
          Icon(Icons.menu, size: 40.0, color: MyColor.white),
        ],
      ),
    );
  }

  Widget card() {
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
                          Text('%', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: MyColor.grey)),
                          Icon(
                            Icons.add,
                            size: 35.0,
                            color: MyColor.grey,
                          ),
                        ],
                      ),
                      Text(
                        'ایجاد آفرهای گروهی',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: MyColor.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(height: 100.0, width: 0.5, color: MyColor.grey),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('%', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: MyColor.black)),
                    Text(
                      'آفر (تخفیف)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Container(
                height: 7.0,
                width: 170,
                decoration: BoxDecoration(color: MyColor.gold, borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0), topLeft: Radius.circular(50.0))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget circularImage(String valueNumber, String image) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(radius: 28.0, child: Image.network(image)),
          Row(
            children: <Widget>[
              Text(
                'آفر',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.grey),
              ),
              SizedBox(width: 10.0),
              Text(
                valueNumber,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget text(String text, Color color) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: color));
  }

  Widget time(String time, String title) {
    return Container(
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(time, style: TextStyle(fontSize: 26.0, color: MyColor.white, fontWeight: FontWeight.bold)),
          Text(title, style: TextStyle(fontSize: 24.0, color: MyColor.grey, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget cardList(int index) {
    return Column(
      children: <Widget>[
        Container(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Card(
              elevation: 3.0,
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
              color: animatedHeight == 0.0 ? MyColor.white : MyColor.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(radius: 8.0, backgroundColor: MyColor.green),
                            SizedBox(width: 7.0),
                            animatedHeight == 0.0 ? Text('') : Text("فعال ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: MyColor.green)),
                            Text( results.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: animatedHeight == 0.0 ? MyColor.black :
                            MyColor
                                .white)),
                          ],
                        ),
                        animatedHeight != 0.0
                            ? Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: IconButton(
                                  splashColor: MyColor.grey,
                                  icon: Icon(animatedHeight == 0.0 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up, size: 50.0, color: MyColor.grey),
                                  onPressed: () {
                                    if (animatedHeight == 0.0) {
                                      setState(() {
                                        animatedHeight = MediaQuery.of(context).size.height;
                                      });
                                    } else {
                                      setState(() {
                                        animatedHeight = 0.0;
                                      });
                                    }
                                  },
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network( results.image, height: 80.0, width: 120.0),
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('R', style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, color: MyColor.grey)),
                                    SizedBox(width: 5.0),
                                    Text(
                                      results.price.toString(),
                                      style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, color: MyColor.red),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('R', style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, color: MyColor.grey)),
                                    SizedBox(width: 5.0),
                                    Text(results.minBuy.toString(),
                                        style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, color: animatedHeight == 0.0 ? MyColor.black : MyColor.white)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        animatedHeight == 0.0
                            ? Padding(
                                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                                child: IconButton(
                                  splashColor: MyColor.grey,
                                  icon: Icon(animatedHeight == 0.0 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up, size: 50.0, color: MyColor.grey),
                                  onPressed: () {
                                    setState(() {
                                      animatedHeight = 800.0;
                                    });
                                  },
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: animatedHeight,
                    color: Colors.black,
                    duration: Duration(milliseconds: 300),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 80.0,
                              child: Card(
                                color: MyColor.dark,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    text('از ', MyColor.grey),
                                    text(results.createdAt, MyColor.white),
                                    text(' تا ', MyColor.grey),
                                    text( '8', MyColor.white),
                                    text('روز', MyColor.grey),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  time(_secound.toString(), 'ثانیه'),
                                  time('$minutes', 'دقیقه'),
                                  time('$hours', 'ساعت'),
                                  time('$day', "روز"),
                                ],
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text( results.desc, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.white)),
                            SizedBox(height: 40.0),
                            Container(
                              height: 80.0,
                              child: Card(
                                color: MyColor.dark,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'کد آفر',
                                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: MyColor.grey),
                                      ),
                                      Text(
                                        results.minBuy.toString(),
                                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: MyColor.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              margin: const EdgeInsets.only(bottom: 40.0, top: 20.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 120.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.cyanAccent,
                                    ),
                                    child: Image.network(results.image),
                                  ),
                                  SizedBox(width: 15.0),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        results.userName,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: MyColor.white),
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                             results.gender == 'male' ? 'مرد' : 'زن',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.grey),
                                          ),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor: MyColor.gold,
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            '0 سال',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.grey),
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor: MyColor.gold,
                                          ),
                                          Text(
                                            'متولد:  ${results.userAge}',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.grey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.phone, color: MyColor.gold, size: 20.0),
                                          SizedBox(width: 5.0),
                                          Text(
                                            results.mobile,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.grey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on, color: MyColor.gold, size: 20.0),
                                          SizedBox(width: 5.0),
                                          Text(
                                            results.province + "/" + results.city,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: MyColor.grey,
                              ),
                              child: Container(
                                height: 60.0,
                                width: 200.0,
                                margin: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: MyColor.black,
                                ),
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        'پروفایل مشتری',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: MyColor.grey),
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: 22.0, color: MyColor.grey),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  // get all data from server ;
  fetchData() async {
    Dio dio = Dio();
    dio.options.headers['Authorization'] = ['Token 1e1444c63fe70b8bdb3ef96da49888402438d83e'];
    Response response = await dio.get(WebService.OfferApi);
    setState(() {
      data = response.data['results'];
      results = data as Results;
    });
  }
  // for pagintion load in list ;
  Future<List<offersModel>> pageFetch(int offset) async {
    print(offset);
    page++;
    final Results faker = Results();
    final List<Results> nextUsersList = List.generate(
      10,
      (int index) => Results(),
    );
    await Future<List<Results>>.delayed(Duration(seconds: 1));

    return page == 10 ? [] : nextUsersList;
  }
  // for refresh page ;
  Future<List<offersModel>> pageRefresh(int offset) async {
    page = -1;
    return pageFetch(offset);
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
    // get all data from Server ;
    fetchData();
    page = -1;
    paginationViewType = PaginationViewType.listView;
    key = GlobalKey<PaginationViewState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: GradientContainer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      header(),
                      SizedBox(height: 20.0),
                      card(),
                      circularImage('1094', results.userName),
                      PaginationView(
                          key: key,
                          paginationViewType: paginationViewType,
                          initialLoader: Container(),
                          pullToRefresh: true,
                          pageFetch: pageFetch,
                          pageRefresh: pageRefresh,
                          onError: (dynamic error) => Center(child: Text('Some error occured')),
                          onEmpty: Text('nothing to show'),
                          bottomLoader: Center(child: Text('loading ...')),
                          itemBuilder: (BuildContext context, data, int index) => cardList(index))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
