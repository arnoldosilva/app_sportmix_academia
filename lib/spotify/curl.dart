import 'package:http/http.dart' as http;
import 'package:academia_sport_mix/constantes/api.dart';
import 'dart:async';

void curlConvert() async {
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $key',
  };

  var res = await http.get('https://api.spotify.com/v1/me/playlists', headers: headers);
  if (res.statusCode != 200 && key != null) throw Exception('get error: statusCode= ${res.statusCode}');
  print(res.body);
}
