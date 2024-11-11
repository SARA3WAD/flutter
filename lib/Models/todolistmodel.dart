class ToDoListModel{
  List<dynamic> result;
  int total;
  ToDoListModel({required this.result,required this.total});
  factory ToDoListModel.fromjson(Map<String,dynamic> json){
    List<dynamic>full= json['todos'];
    return ToDoListModel(result: full,total: full.length);
  }
}