import 'package:json_annotation/json_annotation.dart';
import 'population_data.dart';

part 'religion.g.dart';

@JsonSerializable()

/// Religion distribution data retrieved from population query.
class Religion extends PopulationData {
  @JsonKey(name: 'no_religion')
  int none;

  int buddhism;

  int taoism;

  int islam;

  int hinduism;

  int sikhism;

  @JsonKey(name: 'catholic_christian')
  int catholicism;

  @JsonKey(name: 'other_christians')
  int christianity;

  @JsonKey(name: 'other_religions')
  int others;

  Religion(
      this.none,
      this.buddhism,
      this.taoism,
      this.islam,
      this.hinduism,
      this.sikhism,
      this.catholicism,
      this.christianity,
      this.others,
      String planningArea,
      int year)
      : super(planningArea, year);

  factory Religion.fromJson(Map<String, dynamic> json) =>
      _$ReligionFromJson(json);
  Map<String, dynamic> toJson() => _$ReligionToJson(this);
}
