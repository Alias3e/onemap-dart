import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

/// Theme updated status.
@JsonSerializable(createToJson: false)
class Status {
  /// If the theme is updated.
  @JsonKey(name: 'UpdatedFile')
  bool updatedFile;

  Status(this.updatedFile);

  /// @nodoc
  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
