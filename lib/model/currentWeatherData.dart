// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather.dart';

class CurrentWeatherData {
  Coord coord;
  List<Weather> weather;
  String base;
  MainWeather mainWeather;
  int visibility;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;
  
  CurrentWeatherData({
    required this.coord,
    required this.weather,
    required this.base,
    required this.mainWeather,
    required this.visibility,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coord': coord.toMap(),
      'weather': weather.map((x) => x.toMap()).toList(),
      'base': base,
      'mainWeather': mainWeather.toMap(),
      'visibility': visibility,
      'clouds': clouds.toMap(),
      'dt': dt,
      'sys': sys.toMap(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory CurrentWeatherData.fromMap(Map<String, dynamic> map) {
    return CurrentWeatherData(
      coord: Coord.fromMap(map['coord'] as Map<String,dynamic>),
      weather: List<Weather>.from((map['weather'] as List<int>).map<Weather>((x) => Weather.fromMap(x as Map<String,dynamic>),),),
      base: map['base'] as String,
      mainWeather: MainWeather.fromMap(map['mainWeather'] as Map<String,dynamic>),
      visibility: map['visibility'] as int,
      clouds: Clouds.fromMap(map['clouds'] as Map<String,dynamic>),
      dt: map['dt'] as int,
      sys: Sys.fromMap(map['sys'] as Map<String,dynamic>),
      timezone: map['timezone'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
      cod: map['cod'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentWeatherData.fromJson(String source) => CurrentWeatherData.fromMap(json.decode(source) as Map<String, dynamic>);
}
