// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class MainWeather {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  double pressure;
  double humidity;
  double sea_level;
  double grnd_level;
  
  MainWeather({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': temp,
      'feels_like': feels_like,
      'temp_min': temp_min,
      'temp_max': temp_max,
      'pressure': pressure,
      'humidity': humidity,
      'sea_level': sea_level,
      'grnd_level': grnd_level,
    };
  }

  factory MainWeather.fromMap(Map<String, dynamic> map) {
    return MainWeather(
      temp: map['temp'] as double,
      feels_like: map['feels_like'] as double,
      temp_min: map['temp_min'] as double,
      temp_max: map['temp_max'] as double,
      pressure: map['pressure'] as double,
      humidity: map['humidity'] as double,
      sea_level: map['sea_level'] as double,
      grnd_level: map['grnd_level'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory MainWeather.fromJson(String source) => MainWeather.fromMap(json.decode(source) as Map<String, dynamic>);
}
