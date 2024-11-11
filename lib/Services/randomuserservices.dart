
import 'package:dio/dio.dart';
import 'package:sara/Models/randomusermodel.dart';

class RandomUserServices
{
  static Dio dio = Dio();
  static Future<RandomUserModel> getdata()async{
    try{
      Response response = await dio.get('https://randomuser.me/api/?results=50');
      if(response.statusCode == 200){
        return RandomUserModel.fromjson(response.data);
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