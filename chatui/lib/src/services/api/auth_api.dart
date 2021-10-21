import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiUrl = "192.168.1.10:8000/";
const List<String> apiPrefixes = [
  "ws://",
  "http://",
];
enum prefixTypes { webSocket, http }

String formatUrl(prefixTypes a, String more) {
  String prefix =
      a == prefixTypes.webSocket ? apiPrefixes.first : apiPrefixes.last;

  return prefix + apiUrl + more;
}

Future<String> login(String username, String password) async {
  http.Response response = await http.post(
      Uri.parse(
        formatUrl(prefixTypes.http, "gettoken/"),
      ),
      body: {
        "username": username,
        "password": password,
      }).timeout(const Duration(seconds: 5));
  var data = json.decode(response.body);
  if (data['non_field_errors'] != null) {
    throw UnautherizedException(json.decode(response.body)['non_field_errors']);
  }
  if (data['token'] == null) {
    throw UnautherizedException();
  }
  return data['token'];
}

class UnautherizedException implements Exception {
  String? message;
  UnautherizedException([this.message]);
  @override
  String toString() {
    if (message == null) return "UnautherizedException";
    return message as String;
  }
}
