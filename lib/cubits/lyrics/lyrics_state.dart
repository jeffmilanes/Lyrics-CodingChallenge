part of 'lyrics_cubit.dart';

enum LyricsStatus { initial, loading, success, failure }

extension LyricsStatusCheck on LyricsStatus {
  bool get isInitial => this == LyricsStatus.initial;
  bool get isLoading => this == LyricsStatus.loading;
  bool get isSuccess => this == LyricsStatus.success;
  bool get isFailure => this == LyricsStatus.failure;
}

@JsonSerializable()
class LyricsState extends Equatable {
  final LyricsStatus status;
  final ContentHeader? lyrics;
  final DateTime? timeUpdated;

  LyricsState({
    this.status = LyricsStatus.initial,
    this.timeUpdated,
    this.lyrics,
  });

  LyricsState copyWith(
      {LyricsStatus? status, ContentHeader? lyrics, DateTime? timeUpdated}) {
    return LyricsState(
        status: status ?? this.status,
        lyrics: lyrics ?? this.lyrics,
        timeUpdated: timeUpdated ?? this.timeUpdated);
  }

  factory LyricsState.fromJson(Map<String, dynamic> json) =>
      _$LyricsStateFromJson(json);

  Map<String, dynamic> toJson() => _$LyricsStateToJson(this);

  @override
  List<Object?> get props => [status, lyrics, timeUpdated];
}

class LyricsInitial extends LyricsState {}
