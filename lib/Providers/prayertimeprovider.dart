import 'package:flutter/foundation.dart';
import 'package:sara/Models/prayertimemodel.dart';
import 'package:sara/Services/prayertimeservice.dart';

class PrayerTimeProvider with ChangeNotifier{
  PrayerTimeModel? prayerTimeModel;
  Future<void> getdataprovider()async{
    prayerTimeModel = await PrayerTimeService.getdata();
    notifyListeners();
  }
}