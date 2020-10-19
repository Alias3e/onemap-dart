import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()

/// Theme updated status.
class Status {
  @JsonKey(name: 'UpdatedFile')
  bool updatedFile;

  Status(this.updatedFile);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
