import 'dart:convert';
import 'package:coding_challenge/models/content_header.dart';
import 'package:http/http.dart' as http;

class LyricsRequestFailure implements Exception {}

class LyricsApiClient {
  final http.Client _httpClient;

  LyricsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _url =
      'https://mocki.io/v1/f1ae10cc-7154-4622-a22f-96307e1404d2';

  Future<ContentHeader> fetchLyrics() async {
    final response = await _httpClient.get(Uri.parse(_url));

    if (response.statusCode != 200) {
      throw LyricsRequestFailure();
    }

    return ContentHeader.fromJson(jsonDecode(response.body));
  }
}
