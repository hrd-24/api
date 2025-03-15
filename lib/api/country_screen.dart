import 'package:api/model/data_api.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:api/api/api_service.dart';

class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  List<String> countryList = [];
  String? selectedCountry;
  CountryRespons? countryData;
  bool isLoading = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchCountries();
  }

  void fetchCountries() async {
    final countries = await ApiService.fetchAllCountries();
    setState(() {
      countryList = countries;
    });
  }

  void fetchCountry(String country) async {
    setState(() {
      isLoading = true;
      selectedCountry = country;
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
      appBar: AppBar(
        title: const Text("Cari Negara"),
        backgroundColor: const Color.fromARGB(255, 192, 198, 209),
      ),
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Text("Pilih Negara"),
                    items:
                        countryList.map((String country) {
                          return DropdownMenuItem<String>(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
                    value: selectedCountry,
                    onChanged: (value) {
                      fetchCountry(value!);
                    },
                    dropdownSearchData: DropdownSearchData(
                      searchController: searchController,
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: 'Cari negara...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fillColor:
                                Colors.white, // Warna latar belakang putih
                            filled: true,
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        return item.value!.toLowerCase().contains(
                          searchValue.toLowerCase(),
                        );
                      },
                    ),
                    buttonStyleData: ButtonStyleData(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            Colors
                                .white, // Warna latar belakang putih untuk dropdown
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 300,
                      decoration: BoxDecoration(
                        color:
                            Colors
                                .white, // Warna latar belakang putih untuk dropdown list
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : countryData != null
                    ? Expanded(
                      child: ListView(
                        children: [
                          InfoCard(
                            title: "Nama Negara",
                            value: countryData?.name?.common ?? "",
                            icon: Icons.public,
                          ),
                          InfoCard(
                            title: "Ibukota",
                            value: countryData?.capital?[0] ?? 'Tidak tersedia',
                            icon: Icons.location_city,
                          ),
                          InfoCard(
                            title: "Populasi",
                            value: countryData?.population?.toString() ?? "",
                            icon: Icons.people,
                          ),
                          InfoCard(
                            title: "Region",
                            value: countryData?.region ?? "",
                            icon: Icons.map,
                          ),
                          if (countryData?.flags != null)
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Bendera Negara",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Image.network(
                                      countryData?.flags?.png ?? "",
                                      height: 100,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    )
                    : const Text(
                      "Pilih negara untuk melihat detail",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(value, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
