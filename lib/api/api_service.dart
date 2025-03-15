import 'dart:convert';
import 'package:api/model/data_api.dart';
import 'package:api/model/data_country.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://restcountries.com/v3.1";

  // Fungsi untuk mengambil daftar semua negara
  static Future<List<String>> fetchAllCountries() async {
    final url = Uri.parse('$baseUrl/all');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
         final List<dynamic> jsonData = json.decode(response.body);
        final List<CountryNameRespons> data = CountryNameRespons.fromJsonList(jsonData);
        print(data);
        return data.map<String>((country) => country.name?.common as String).toList();
      } else {
        return [];
      }
    } catch (error) {
      print("Error fetching countries: $error");
      return [];
    }
  }

  // Fungsi untuk mengambil data negara berdasarkan nama
  static Future<CountryRespons?> fetchCountryData(String country) async {
    final url = Uri.parse('$baseUrl/name/$country');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final List<CountryRespons> data = CountryRespons.fromJsonList(jsonData);

        return data.isNotEmpty ? data[0] : null;
      } else {
        return null;
      }
    } catch (error) {
      print("Error fetching country data: $error");
      return null;
    }
  }
}
