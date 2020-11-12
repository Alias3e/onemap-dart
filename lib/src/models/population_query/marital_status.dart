import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'marital_status.g.dart';

/// Marital status retrieved from population query.
@JsonSerializable(createToJson: false)
class MaritalStatus extends GenderData {
  /// Number of people who are single.
  int single;

  /// Number of people who are married.
  int married;

  /// Number of people who are widowed.
  int widowed;

  /// Number of people who are divorced.
  int divorced;

  MaritalStatus(this.single, this.married, this.widowed, this.divorced,
      String gender, String planningArea, int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory MaritalStatus.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusFromJson(json);
}
