import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'economic_status.g.dart';

@JsonSerializable(createToJson: false)

/// Contains the economic status retrieved from population query.
class EconomicStatus extends GenderData {
  int employed;

  int unemployed;

  int inactive;

  EconomicStatus(this.employed, this.unemployed, this.inactive, String gender,
      String planningArea, int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory EconomicStatus.fromJson(Map<String, dynamic> json) =>
      _$EconomicStatusFromJson(json);
}
