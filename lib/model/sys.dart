import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sys {
  String country;
  int sunrise;
  int sunset;
  int id; 
  Sys({
    required this.country,
    required this.sunrise,
    required this.sunset,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'sunrise': sunrise,
      'sunset': sunset,
      'id': id,
    };
  }

  factory Sys.fromMap(Map<String, dynamic> map) {
    return Sys(
      country: map['country'] as String,
      sunrise: map['sunrise'] as int,
      sunset: map['sunset'] as int,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sys.fromJson(String source) => Sys.fromMap(json.decode(source) as Map<String, dynamic>);
}
