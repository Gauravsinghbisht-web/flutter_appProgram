import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {

  Future<Map<String, dynamic>> getWeather(String city) async {

    // Step 1: Find city coordinates
    final geoUrl = Uri.parse(
      'https://geocoding-api.open-meteo.com/v1/search?name=$city&count=1',
    );

    final geoResponse = await http.get(geoUrl);

    if (geoResponse.statusCode != 200) {
      throw Exception('Failed to find city');
    }

    final geoData = jsonDecode(geoResponse.body);

    if (geoData['results'] == null) {
      throw Exception('City not found');
    }

    final latitude = geoData['results'][0]['latitude'];
    final longitude = geoData['results'][0]['longitude'];
    final cityName = geoData['results'][0]['name'];

    // Step 2: Get weather using coordinates
    final weatherUrl = Uri.parse(
      'https://api.open-meteo.com/v1/forecast'
      '?latitude=$latitude'
      '&longitude=$longitude'
      '&current=temperature_2m,wind_speed_10m',
    );

    final weatherResponse = await http.get(weatherUrl);

    if (weatherResponse.statusCode != 200) {
      throw Exception('Weather data not found');
    }

    final weatherData = jsonDecode(weatherResponse.body);

    return {
      'city': cityName,
      'temperature':
          weatherData['current']['temperature_2m'],
      'windSpeed':
          weatherData['current']['wind_speed_10m'],
    };
  }
}