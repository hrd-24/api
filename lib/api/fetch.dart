import 'dart:convert';
import 'package:api/model/data_api.dart';
import 'package:http/http.dart' as http;


Future<Api> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://restcountries.com/v3.1/name/all'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Api.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}