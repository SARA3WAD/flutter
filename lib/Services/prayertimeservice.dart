import 'package:dio/dio.dart';
import 'package:sara/Models/prayertimemodel.dart';

class PrayerTimeService{
  static Dio dio = Dio();
  static Future<PrayerTimeModel> getdata()async{
    try{
      Response response = await dio.get('http://api.aladhan.com/v1/timingsByCity/09-11-2024?country=egypt&city=cairo');
      if(response.statusCode == 200){
        return PrayerTimeModel.fromjson(response.data);
      }
      else{
        throw Exception('Error');
      }
    }
    catch(s){
      throw Exception(s);
    }
  }
}