import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vipon/Screens/GiftCardScreen.dart';
import 'package:vipon/Screens/Offerpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'IRANSansWeb'),
      title: 'Flutter Demo',
      home: OfferPage(),
    );
  }
}
