import 'package:flutter/widgets.dart';
import 'package:sara/Models/randomusermodel.dart';
import 'package:sara/Services/randomuserservices.dart';

class RandomUserProvider with ChangeNotifier{
  RandomUserModel? randomUserModel;
  Future<void> getprovider()async{
    randomUserModel = await RandomUserServices.getdata();
    notifyListeners();
  }
}