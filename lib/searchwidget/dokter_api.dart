import 'dart:convert';

import 'package:flutter_application_1/searchwidget/dokter_ex.dart';
import 'package:http/http.dart' as http;

class doktersApi {
  static Future<List<dokter>> getdokters(String query) async {
    final url = Uri.parse(
        'https://gist.githubusercontent.com/Melky8/ed5ab85d4f4473fc32a168c5b9784921/raw/324f19fb72af3e4e5df2ccdc0201bf3857ce0003/dokter.json');
        
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List dokters = json.decode(response.body);

      return dokters.map((json) => dokter.fromJson(json)).where((dokter) {
        final namaLower = dokter.name.toLowerCase();
        final authorLower = dokter.spesialis.toLowerCase();
        final searchLower = query.toLowerCase();

        return namaLower.contains(searchLower) ||
            authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
