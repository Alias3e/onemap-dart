import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'economic_status.g.dart';

/// Contains the economic status retrieved from population query.
@JsonSerializable(createToJson: false)
class EconomicStatus extends GenderData {
  /// Number of people who are employed.
  int employed;

  /// Number of people who are unemployed.
  int unemployed;

  /// Number of people who are inactive.
  int inactive;

  EconomicStatus(this.employed, this.unemployed, this.inactive, String gender,
      String planningArea, int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory EconomicStatus.fromJson(Map<String, dynamic> json) =>
      _$EconomicStatusFromJson(json);
}
