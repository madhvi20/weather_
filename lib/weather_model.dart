class Weather {
  final String description;
  final double temperature;
  final double feelsLike;
  final double minTemp;
  final double maxTemp;
  final int pressure;
  final int humidity;
  final int visibility;
  final double windSpeed;

  Weather({
    required this.description,
    required this.temperature,
    required this.feelsLike,
    required this.minTemp,
    required this.maxTemp,
    required this.pressure,
    required this.humidity,
    required this.visibility,
    required this.windSpeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json['weather'][0]['description'],
      temperature: json['main']['temp'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      minTemp: json['main']['temp_min'].toDouble(),
      maxTemp: json['main']['temp_max'].toDouble(),
      pressure: json['main']['pressure'].toInt(),
      humidity: json['main']['humidity'].toInt(),
      visibility: json['visibility'].toInt(),
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }
}
