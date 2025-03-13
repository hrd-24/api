import 'package:api/api/api_service.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  Map<String, dynamic>? countryData;
  bool isLoading = false;

  // Fungsi untuk fetch data dari API
  void fetchCountry(String country) async {
    setState(() {
      isLoading = true;
    });

    final data = await ApiService.fetchCountryData(country);

    setState(() {
      countryData = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cari Negara")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Masukkan Nama Negara",
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                fetchCountry(value);
              },
            ),
            SizedBox(height: 20),
            isLoading
                ? Center(child: CircularProgressIndicator())
                : countryData != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Nama: ${countryData!['name']['common']}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Ibukota: ${countryData!['capital']?[0] ?? 'Tidak tersedia'}",
                      ),
                      Text("Populasi: ${countryData!['population']}"),
                      Text("Region: ${countryData!['region']}"),
                      SizedBox(height: 10),
                      countryData!['flags'] != null
                          ? Image.network(
                              countryData!['flags']['png'],
                              height: 100,
                            )
                          : Container(),
                    ],
                  )
                : Text("Data tidak ditemukan"),
          ],
        ),
      ),
    );
  }
}
