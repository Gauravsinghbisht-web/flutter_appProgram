import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {

  Future<Map<String, dynamic>> getWeather() async {

    final url =
        "https://api.open-meteo.com/v1/forecast?latitude=28.61&longitude=77.20&current_weather=true";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      return jsonDecode(response.body);

    } else {

      throw Exception("Failed to load weather");

    }
  }
}