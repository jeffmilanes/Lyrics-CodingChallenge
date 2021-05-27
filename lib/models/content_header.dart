import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:coding_challenge/models/content_list.dart';
import 'package:coding_challenge/models/content_list_item.dart';

part 'content_header.g.dart';

@JsonSerializable()
class ContentHeader extends Equatable {
  final ContentListItem? featured;
  final List<ContentList>? data;
  final DateTime? dateUpdated;

  const ContentHeader({
    this.featured,
    this.data,
    this.dateUpdated,
  });

  factory ContentHeader.fromJson(Map<String, dynamic> json) =>
      _$ContentHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$ContentHeaderToJson(this);

  @override
  List<Object?> get props => [featured, data];
}
