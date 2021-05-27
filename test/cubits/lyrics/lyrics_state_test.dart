import 'package:coding_challenge/cubits/lyrics/lyrics_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Lyrics Status Check', () {
    test('returns correct values for LyricsStatus.initial', () {
      const status = LyricsStatus.initial;
      expect(status.isInitial, isTrue);
      expect(status.isLoading, isFalse);
      expect(status.isSuccess, isFalse);
      expect(status.isFailure, isFalse);
    });
    test('returns correct values for LyricsStatus.loading', () {
      const status = LyricsStatus.loading;
      expect(status.isInitial, isFalse);
      expect(status.isLoading, isTrue);
      expect(status.isSuccess, isFalse);
      expect(status.isFailure, isFalse);
    });

    test('returns correct values for LyricsStatus.success', () {
      const status = LyricsStatus.success;
      expect(status.isInitial, isFalse);
      expect(status.isLoading, isFalse);
      expect(status.isSuccess, isTrue);
      expect(status.isFailure, isFalse);
    });

    test('returns correct values for LyricsStatus.failure', () {
      const status = LyricsStatus.failure;
      expect(status.isInitial, isFalse);
      expect(status.isLoading, isFalse);
      expect(status.isSuccess, isFalse);
      expect(status.isFailure, isTrue);
    });
  });
}
