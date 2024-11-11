import 'package:flutter/cupertino.dart';
import 'package:sara/Models/todolistmodel.dart';
import 'package:sara/Services/todolistservice.dart';

class ToDoListProvider with ChangeNotifier{
  ToDoListModel? toDoListModel;
  Future<void> getprovider()async{
    toDoListModel = await ToDoListService.getdata();
    notifyListeners();
  }
 Future<void> addtaskprovider(String newtask)async{
    await ToDoListService.addtask(newtask);
    toDoListModel?.result.add(newtask);
    toDoListModel?.total+=1;
    notifyListeners();
 }
}