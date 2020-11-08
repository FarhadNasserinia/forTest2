import 'package:flutter/material.dart';
import 'package:vipon/Color/MyColor.dart';

class ReportCustomers extends StatefulWidget {
  @override
  _ReportCustomersState createState() => _ReportCustomersState();
}

class _ReportCustomersState extends State<ReportCustomers> {


  Widget rowWidget(Color color, String number, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          width: 106.0,
          child: Stack(
            children: <Widget>[
              Text(number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: color)),
              Positioned(right: 0.0, top: 0.0, child: Text('R', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: MyColor.dark)))
            ],
          ),
        ),
        Expanded(
          child: Container(
              width: 130.0,
              child: Text(text, textAlign: TextAlign.end, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: MyColor.white))),
        )
      ],
    );
  }

  Widget myDivider(Size size) {
    return Container(height: 4.0, width: size.width, color: MyColor.dark, margin: const EdgeInsets.only(bottom: 15.0));
  }

  Widget endWidget (String title , Size size) {
   return Container(
     height: 170.0,
     width: size.width,
     child: Card(
       color: MyColor.dark,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Icon(Icons.person_outline , size: 70.0, color: MyColor.white),
             Text(title,textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: MyColor.white))
           ],
         ),
       ),
     ),
   );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Card(
        margin: const EdgeInsets.all(0.0),
        color: MyColor.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text('پردازش اعتباردهی به مشتریان', textAlign: TextAlign.center, style: TextStyle(color: MyColor.white)),
              SizedBox(height: 20.0),
              rowWidget(MyColor.green, '+ 1,280,54', 'پرداخت اعتبار خرید'),
              myDivider(size),
              rowWidget(MyColor.green, '+ 1,280,54', 'افزایش اعتبار (مدیریت)'),
              myDivider(size),
              rowWidget(MyColor.red, '- 1,280,54', 'پرداخت اعتبار خرید'),
              myDivider(size),
              rowWidget(MyColor.red, '- 1,280,54', 'کاهش اعتبار (مدیریت)'),
              myDivider(size),
              rowWidget(MyColor.white, '  1,280,54', 'کاهش اعتبار (مدیریت)'),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(child: endWidget('قوانین و شرایط', size)),
                  Expanded(child: endWidget('آموزش ویدیویی', size)),
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
