class PrayerTimeModel{
  Map<String,dynamic> result;
  PrayerTimeModel({required this.result});
  factory PrayerTimeModel.fromjson(Map<String,dynamic> json){
      return PrayerTimeModel(result: json['data']['timings']);
  }
}