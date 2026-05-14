import 'package:flutter/material.dart';
import 'weather_service.dart';

class Weatherapi extends StatefulWidget {
   const Weatherapi({super.key});

  @override
  State<Weatherapi> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<Weatherapi> {

  final WeatherService service = WeatherService();

  Map<String, dynamic>? weatherData;

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  void fetchWeather() async {

    final data = await service.getWeather();

    setState(() {
      weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        title: const Text("Weather App"),
      ),
       backgroundColor: Colors.lightBlue.shade300,
      body: Center(
        

        child: weatherData == null
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Delhi Weather",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "${weatherData!['current_weather']['temperature']} °C",
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Wind Speed: ${weatherData!['current_weather']['windspeed']}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}