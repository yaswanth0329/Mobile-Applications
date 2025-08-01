import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> getRecommendations(String title) async {
  final response = await http.post(
    Uri.parse("https://192.168.55.104:5000/recommend"),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({"title": title}),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception("Failed to load recommendations");
  }
}