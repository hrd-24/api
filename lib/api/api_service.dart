import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // LINK NYA GET https://restcountries.com/v3.1/name/indonesia

  static const String baseUrl = "https://restcountries.com/v3.1";

  // Fungsi untuk mengambil data negara
  static Future<Map<String, dynamic>?> fetchCountryData(String country) async {
    final url = Uri.parse('$baseUrl/name/$country');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
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
