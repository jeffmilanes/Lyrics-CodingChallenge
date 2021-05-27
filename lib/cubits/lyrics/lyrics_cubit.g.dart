// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricsState _$LyricsStateFromJson(Map<String, dynamic> json) {
  return LyricsState(
    status: _$enumDecode(_$LyricsStatusEnumMap, json['status']),
    timeUpdated: json['timeUpdated'] == null
        ? null
        : DateTime.parse(json['timeUpdated'] as String),
    lyrics: json['lyrics'] == null
        ? null
        : ContentHeader.fromJson(json['lyrics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LyricsStateToJson(LyricsState instance) =>
    <String, dynamic>{
      'status': _$LyricsStatusEnumMap[instance.status],
      'lyrics': instance.lyrics,
      'timeUpdated': instance.timeUpdated?.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$LyricsStatusEnumMap = {
  LyricsStatus.initial: 'initial',
  LyricsStatus.loading: 'loading',
  LyricsStatus.success: 'success',
  LyricsStatus.failure: 'failure',
};
