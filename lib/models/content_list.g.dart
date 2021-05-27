// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentList _$ContentListFromJson(Map<String, dynamic> json) {
  return ContentList(
    header: json['header'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => ContentListItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ContentListToJson(ContentList instance) =>
    <String, dynamic>{
      'header': instance.header,
      'items': instance.items,
    };
