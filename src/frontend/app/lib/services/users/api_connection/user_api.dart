
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app/services/users/models/user_api_model.dart';

final _base = "https://nuture2020.herokuapp.com";
final _tokenEndpoint = "/api-token-auth/";
final _tokenURL = _base + _tokenEndpoint;

Future<Token> getToken(UserLogin userLogin) async {
  final http.Response response = await http.post(
    _tokenURL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(userLogin.toDatabaseJson()),
  );
  if (response.statusCode == 200) {
    return Token.fromJson(json.decode(response.body));
  } else {
    throw Exception(json.decode(response.body));
  }
}