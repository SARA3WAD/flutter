import 'package:flutter/material.dart';
import 'package:sara/Screens/prayertime.dart';
class Prayerwidget extends StatelessWidget {
Prayerwidget({required this.prayertime,required this.Prayername});
String Prayername;
String prayertime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
          Text(Prayername,style: TextStyle(
            color: Colors.black
          ),),
        SizedBox(height: 50,),
        Text(prayertime),
      ],
    );
  }
}
