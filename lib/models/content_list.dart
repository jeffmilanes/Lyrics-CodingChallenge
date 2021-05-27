import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'content_list_item.dart';

part 'content_list.g.dart';

@JsonSerializable()
class ContentList extends Equatable {
  final String header;
  final List<ContentListItem> items;

  const ContentList({
    required this.header,
    required this.items,
  });

  factory ContentList.fromJson(Map<String, dynamic> json) =>
      _$ContentListFromJson(json);

  Map<String, dynamic> toJson() => _$ContentListToJson(this);

  @override
  List<Object?> get props => [header, items];
}
