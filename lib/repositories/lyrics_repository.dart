import 'package:coding_challenge/models/content_header.dart';
import 'package:coding_challenge/utils/services/lyrics_api_service.dart';

class LyricsRepo {
  final LyricsApiClient _lyricsApiClient;

  LyricsRepo({LyricsApiClient? lyricsApiClient})
      : _lyricsApiClient = lyricsApiClient ?? LyricsApiClient();

  Future<ContentHeader> fetchLyric() async {
    final lyrics = await _lyricsApiClient.fetchLyrics();
    return lyrics;
  }
}
