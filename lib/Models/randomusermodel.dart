class RandomUserModel{
  List<dynamic> users;
  RandomUserModel({required this.users});
  factory RandomUserModel.fromjson(Map<String,dynamic> json){
    return RandomUserModel(users: json['results']);
  }
}