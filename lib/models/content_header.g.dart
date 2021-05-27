// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentHeader _$ContentHeaderFromJson(Map<String, dynamic> json) {
  return ContentHeader(
    featured: json['featured'] == null
        ? null
        : ContentListItem.fromJson(json['featured'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => ContentList.fromJson(e as Map<String, dynamic>))
        .toList(),
    dateUpdated: json['dateUpdated'] == null
        ? null
        : DateTime.parse(json['dateUpdated'] as String),
  );
}

Map<String, dynamic> _$ContentHeaderToJson(ContentHeader instance) =>
    <String, dynamic>{
      'featured': instance.featured,
      'data': instance.data,
      'dateUpdated': instance.dateUpdated?.toIso8601String(),
    };
