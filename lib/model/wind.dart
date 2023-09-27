import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Wind {
  double speed;
  double deg;
  double gust;
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
      'deg': deg,
      'gust': gust,
    };
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] as double,
      deg: map['deg'] as double,
      gust: map['gust'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) => Wind.fromMap(json.decode(source) as Map<String, dynamic>);
}
