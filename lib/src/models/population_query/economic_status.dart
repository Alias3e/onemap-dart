import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/population_query/gender_data.dart';

part 'economic_status.g.dart';

@JsonSerializable()

/// Contains the economic status retrieved from population query.
class EconomicStatus extends GenderData {
  int employed;

  int unemployed;

  int inactive;

  EconomicStatus(this.employed, this.unemployed, this.inactive, String gender,
      String planningArea, int year)
      : super(gender, planningArea, year);

  factory EconomicStatus.fromJson(Map<String, dynamic> json) =>
      _$EconomicStatusFromJson(json);
  Map<String, dynamic> toJson() => _$EconomicStatusToJson(this);
}
