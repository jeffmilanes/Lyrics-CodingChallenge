// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentListItem _$ContentListItemFromJson(Map<String, dynamic> json) {
  return ContentListItem(
    id: json['id'] as int,
    title: json['title'] as String,
    artist: json['artist'] as String,
    artistImage: json['artistImage'] as String,
    releaseDate: json['releaseDate'] as String,
    album: json['album'] as String?,
    views: json['views'] as String,
    imagePath: json['imagePath'] as String,
    lyrics: json['lyrics'] as String,
  );
}

Map<String, dynamic> _$ContentListItemToJson(ContentListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artist': instance.artist,
      'artistImage': instance.artistImage,
      'releaseDate': instance.releaseDate,
      'album': instance.album,
      'imagePath': instance.imagePath,
      'lyrics': instance.lyrics,
      'views': instance.views,
    };
