import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/population_query/gender_data.dart';

part 'ethnic_distribution.g.dart';

@JsonSerializable()

/// Describe the ethnic distribution retrieved from population query.
class EthnicDistribution extends GenderData {
  int chinese;

  int malays;

  int indian;

  int others;

  EthnicDistribution(this.chinese, this.malays, this.indian, this.others,
      String gender, String planningArea, int year)
      : super(gender, planningArea, year);

  factory EthnicDistribution.fromJson(Map<String, dynamic> json) =>
      _$EthnicDistributionFromJson(json);
  Map<String, dynamic> toJson() => _$EthnicDistributionToJson(this);
}
