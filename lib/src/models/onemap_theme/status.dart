import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable(createToJson: false)

/// Theme updated status.
class Status {
  @JsonKey(name: 'UpdatedFile')
  bool updatedFile;

  Status(this.updatedFile);

  /// @nodoc
  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
