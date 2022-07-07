import 'dart:convert';

import 'package:flutter_application_1/obat (x)/obat_ex.dart';
import 'package:http/http.dart' as http;

class obatsApi {
  static Future<List<obat>> getobats(String query) async {
    final url = Uri.parse(
        'https://gist.githubusercontent.com/Melky8/a4a868338f155b0e71c423847ed24c5c/raw/5a95c09eafa97036744c9a044a6425a789502fff/obat');
        
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List obats = json.decode(response.body);

      return obats.map((json) => obat.fromJson(json)).where((obat) {
        final namaLower = obat.name.toLowerCase();
        final authorLower = obat.untuk.toLowerCase();
        final searchLower = query.toLowerCase();

        return namaLower.contains(searchLower) ||
            authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
