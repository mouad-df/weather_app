// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Coord {
  final double? lon;
  final double? lat;

  Coord({
    required this.lon,
    required this.lat,
  });

  



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lon': lon,
      'lat': lat,
    };
  }

  factory Coord.fromMap(Map<String, dynamic> map) {
    return Coord(
      lon: map['lon'] != null ? map['lon'] as double : null,
      lat: map['lat'] != null ? map['lat'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coord.fromJson(String source) => Coord.fromMap(json.decode(source) as Map<String, dynamic>);
}
