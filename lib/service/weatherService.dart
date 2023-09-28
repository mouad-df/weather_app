// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/api/apirepo.dart';
import 'package:weather_app/model/currentWeatherData.dart';

class WeatherService {
  String city;
  WeatherService({
    required this.city,
  });

  String baseUrl = "https://api.openweathermap.org/data/2.5/";
  String apiKey = "appid=93bdc9f9ef72ad24ff8ec46d6c9438f6";

  void getCurrentWeatherData({
    required Function() beforeSend,
    required Function(CurrentWeatherData currentWeatherData) onSuccess,
    required Function(dynamic error) onError,
  }) {
    final url = "$baseUrl/weather?q=$city$apiKey";
    ApiRepo(url: url, payload: null).getData(
        beforeSend: () => beforeSend(),
        onSuccess: (data) => onSuccess(CurrentWeatherData.fromMap(data)),
        onError: ((error) => onError(error)));
  }
}
