import 'package:coding_challenge/models/content_header.dart';
import 'package:coding_challenge/repositories/lyrics_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lyrics_cubit.g.dart';
part 'lyrics_state.dart';

class LyricsCubit extends HydratedCubit<LyricsState> {
  final LyricsRepo _lyricsRepo;

  LyricsCubit(this._lyricsRepo) : super(LyricsState());

  Future<void> getLyrics() async {
    try {
      final lyrics = await _lyricsRepo.fetchLyric();

      emit(state.copyWith(status: LyricsStatus.success, lyrics: lyrics));
    } on Exception {
      emit(state.copyWith(status: LyricsStatus.failure));
    }
  }

  Future<void> dragAndDropUpdate(
      ContentHeader? list, DateTime? timeUpdated) async {
    if (list == null || list.data!.isEmpty) return;

    try {
      emit(
        state.copyWith(
            status: LyricsStatus.success,
            lyrics: list,
            timeUpdated: timeUpdated),
      );
    } on Exception {
      emit(state);
    }
  }

  @override
  LyricsState fromJson(Map<String, dynamic> json) => LyricsState.fromJson(json);

  @override
  Map<String, dynamic> toJson(LyricsState state) => state.toJson();
}
