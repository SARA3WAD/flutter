import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/prayertimeprovider.dart';
import 'package:sara/Widgets/prayerwidget.dart';
class PrayerTime extends StatelessWidget {
   PrayerTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Prayer Time',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Consumer<PrayerTimeProvider>(builder: (context, object, child) {
        final modelobject = object.prayerTimeModel;
        if(modelobject == null){
          object.getdataprovider();
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(
            itemBuilder: (context, index) {
              String prayername = modelobject.result.keys.elementAt(index);
              String prayertime = modelobject.result[prayername];
              return Prayerwidget(Prayername: prayername,prayertime: prayertime);
          },itemCount: modelobject.result.length,);
        }
      },),
    );
  }
}
