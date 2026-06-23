import 'package:flutter/material.dart';
import '../services/weather_service.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() =>
      _WeatherScreenState();
}

class _WeatherScreenState
    extends State<WeatherScreen> {

  final TextEditingController cityController =
      TextEditingController();

  final WeatherService weatherService =
      WeatherService();

  Map<String, dynamic>? weatherData;

  bool isLoading = false;

  String errorMessage = '';

  Future<void> fetchWeather() async {

    if (cityController.text.trim().isEmpty) {
      return;
    }

    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {

      final data =
          await weatherService.getWeather(
        cityController.text.trim(),
      );

      setState(() {
        weatherData = data;
      });

    } catch (e) {

      setState(() {
        weatherData = null;
        errorMessage = e.toString();
      });

    } finally {

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: cityController,
              decoration: InputDecoration(
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: fetchWeather,
                child: const Text('Search'),
              ),
            ),

            const SizedBox(height: 20),

            if (isLoading)
              const CircularProgressIndicator(),

            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),

            if (weatherData != null)
              Card(
                elevation: 5,

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20),
                ),

                child: Padding(
                  padding:
                      const EdgeInsets.all(20),

                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min,

                    children: [
                      const Icon(
                        Icons.cloud,
                        size: 80,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        weatherData!['city'],
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        '${weatherData!['temperature']} °C',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Wind Speed: ${weatherData!['windSpeed']} km/h',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}