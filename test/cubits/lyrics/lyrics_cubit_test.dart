import 'package:bloc_test/bloc_test.dart';
import 'package:coding_challenge/cubits/lyrics/lyrics_cubit.dart';
import 'package:coding_challenge/repositories/lyrics_repository.dart';
import 'package:coding_challenge/utils/services/local_database_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../helpers/hydrated_bloc.dart';

class MockLyricsRepo extends Mock implements LyricsRepo {}

void main() {
  initHydratedBloc();
  group('Lyrics Cubit', () {
    late LyricsRepo lyricsRepo;
    late LyricsCubit lyricsCubit;

    setUp(() {
      lyricsRepo = MockLyricsRepo();
      lyricsCubit = LyricsCubit(lyricsRepo);
    });

    tearDown(() {
      lyricsCubit.close();
    });

    test('Init Lyrics State', () {
      expect(lyricsCubit.state, LyricsState());
    });

    test('JSON Check', () {
      expect(
        lyricsCubit.fromJson(lyricsCubit.toJson(lyricsCubit.state)),
        lyricsCubit.state,
      );
    });

    group('Get Lyrics', () {
      blocTest<LyricsCubit, LyricsState>(
        'emits success when getLyrics returns',
        build: () {
          when(lyricsRepo.fetchLyric).thenAnswer((_) async => local);
          return lyricsCubit;
        },
        act: (cubit) => cubit.getLyrics(),
        expect: () => <LyricsState>[
          LyricsState(status: LyricsStatus.success, lyrics: local)
        ],
        verify: (_) => verify(lyricsRepo.fetchLyric).called(1),
      );

      blocTest<LyricsCubit, LyricsState>(
        'emits failure when getLyrics throws',
        build: () {
          when(lyricsRepo.fetchLyric).thenThrow(Exception('Error'));
          return lyricsCubit;
        },
        act: (cubit) => cubit.getLyrics(),
        expect: () => [LyricsState(status: LyricsStatus.failure)],
        verify: (_) => verify(lyricsRepo.fetchLyric).called(1),
      );
    });

    group('Drag and Drop Update', () {
      blocTest<LyricsCubit, LyricsState>(
        'emits nothing when lyrics is null',
        build: () => lyricsCubit,
        act: (cubit) => cubit.dragAndDropUpdate(null, null),
        expect: () => <LyricsState>[],
      );

      blocTest<LyricsCubit, LyricsState>(
        'emits success when dragAndDropUpdate',
        build: () => lyricsCubit,
        act: (cubit) => cubit.dragAndDropUpdate(local, null),
        expect: () => <LyricsState>[
          LyricsState(status: LyricsStatus.success, lyrics: local)
        ],
      );
    });
  });
}
