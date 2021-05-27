import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'content_list_item.g.dart';

@JsonSerializable()
class ContentListItem extends Equatable {
  final int id;
  final String title;
  final String artist;
  final String artistImage;
  final String releaseDate;
  final String? album;
  final String imagePath;
  final String lyrics;
  final String views;

  const ContentListItem({
    required this.id,
    required this.title,
    required this.artist,
    required this.artistImage,
    required this.releaseDate,
    this.album,
    required this.views,
    required this.imagePath,
    required this.lyrics,
  });

  factory ContentListItem.fromJson(Map<String, dynamic> json) =>
      _$ContentListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ContentListItemToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        artist,
        artistImage,
        releaseDate,
        album,
        views,
        imagePath,
        lyrics
      ];
}
