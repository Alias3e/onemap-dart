import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'ethnic_distribution.g.dart';

/// Describe the ethnic distribution retrieved from population query.
@JsonSerializable(createToJson: false)
class EthnicDistribution extends GenderData {
  /// Number of people who are of chinese ethnicity.
  int chinese;

  /// Number of people who are of malay ethnicity.
  int malays;

  /// Number of people who are of indian ethnicity.
  int indian;

  /// Number of people who are of ethnicity other than chinese, malay or indian.
  int others;

  EthnicDistribution(this.chinese, this.malays, this.indian, this.others,
      String gender, String planningArea, int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory EthnicDistribution.fromJson(Map<String, dynamic> json) =>
      _$EthnicDistributionFromJson(json);
}
