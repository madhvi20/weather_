import 'package:flutter/material.dart';
import "package:weather_/weather_provider.dart";
import 'weather_provider.dart';
import 'weather_model.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => WeatherProvider(),
//       child: MaterialApp(
//         title: 'Weather App',
//         home: WeatherScreen(),
//       ),
//     );
//   }
// }

// class WeatherScreen extends StatefulWidget {
//   @override
//   // ignore: library_private_types_in_public_api
//   _WeatherScreenState createState() => _WeatherScreenState();
// }

// class _WeatherScreenState extends State<WeatherScreen> {
//   final TextEditingController _controller = TextEditingController();
//   String _city = 'London';

//   @override
//   void initState() {
//     super.initState();
//     _fetchWeather();
//   }

//   void _fetchWeather() {
//     Provider.of<WeatherProvider>(context, listen: false).fetchWeather(_city);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final weather = Provider.of<WeatherProvider>(context, listen: null).weather;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Weather App'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter city',
//                 suffixIcon: IconButton(
//                   icon: const Icon(Icons.search),
//                   onPressed: () {
//                     setState(() {
//                       _city = _controller.text;
//                     });
//                     _fetchWeather();
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             if (weather != null)
//               Column(
//                 children: [
//                   Text(
//                     weather.description,
//                     style: const TextStyle(fontSize: 24),
//                   ),
//                   Text(
//                     '${weather.temperature}°C',
//                     style: const TextStyle(fontSize: 24),
//                   ),
//                   Text('Feels like: ${weather.feelsLike}°C'),
//                   Text('Min: ${weather.minTemp}°C, Max: ${weather.maxTemp}°C'),
//                   Text('Pressure: ${weather.pressure} hPa'),
//                   Text('Humidity: ${weather.humidity}%'),
//                   Text('Visibility: ${weather.visibility} m'),
//                   Text('Wind Speed: ${weather.windSpeed} m/s'),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Provider {
//   static of(BuildContext context, {required bool listen}) {}
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'weather_provider.dart';
import 'weather_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Weather App',
        home: WeatherScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController _controller = TextEditingController();
  String _city = 'London';

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  void _fetchWeather() {
    Provider.of<WeatherProvider>(context, listen: false).fetchWeather(_city);
  }

  @override
  Widget build(BuildContext context) {
    final weather = Provider.of<WeatherProvider>(context).weather;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter city',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _city = _controller.text;
                    });
                    _fetchWeather();
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (weather != null)
              Column(
                children: [
                  Text(
                    weather.description,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    '${weather.temperature}°C',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text('Feels like: ${weather.feelsLike}°C'),
                  Text('Min: ${weather.minTemp}°C, Max: ${weather.maxTemp}°C'),
                  Text('Pressure: ${weather.pressure} hPa'),
                  Text('Humidity: ${weather.humidity}%'),
                  Text('Visibility: ${weather.visibility} m'),
                  Text('Wind Speed: ${weather.windSpeed} m/s'),
                  Text('temp: $'{})
                ],
              ),
          ],
        ),
      ),
    );
  }
}