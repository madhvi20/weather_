import 'package:flutter/material.dart';
import 'weather_model.dart';
import 'weather_service.dart';

class WeatherProvider with ChangeNotifier {
  Weather? _weather;
  WeatherService _weatherService = WeatherService();

  Weather? get weather => _weather;

  Future<void> fetchWeather(String city) async {
    _weather = await _weatherService.fetchWeather(city);
    notifyListeners();
  }
}
