import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'ethnic_distribution.g.dart';

@JsonSerializable(createToJson: false)

/// Describe the ethnic distribution retrieved from population query.
class EthnicDistribution extends GenderData {
  int chinese;

  int malays;

  int indian;

  int others;

  EthnicDistribution(this.chinese, this.malays, this.indian, this.others,
      String gender, String planningArea, int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory EthnicDistribution.fromJson(Map<String, dynamic> json) =>
      _$EthnicDistributionFromJson(json);
}
