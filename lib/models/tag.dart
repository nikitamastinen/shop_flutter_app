import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  final String id;
  final String title;

  Tag({
    required this.id,
    required this.title,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
