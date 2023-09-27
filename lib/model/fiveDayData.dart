import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FiveDaysData {
  String dateTime;
  int temp;
  FiveDaysData({
    required this.dateTime,
    required this.temp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTime': dateTime,
      'temp': temp,
    };
  }

  factory FiveDaysData.fromMap(Map<String, dynamic> map) {
    return FiveDaysData(
      dateTime: map['dateTime'] as String,
      temp: map['temp'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory FiveDaysData.fromJson(String source) => FiveDaysData.fromMap(json.decode(source) as Map<String, dynamic>);
}
