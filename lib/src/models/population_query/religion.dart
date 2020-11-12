import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'religion.g.dart';

/// Religion distribution data retrieved from population query.
@JsonSerializable(createToJson: false)
class Religion extends PopulationData {
  /// Number of people with no religion.
  @JsonKey(name: 'no_religion')
  int none;

  /// Number of buddhist.
  int buddhism;

  /// Number of taoist.
  int taoism;

  /// Number of muslims.
  int islam;

  /// Number of hindi.
  int hinduism;

  /// Number of sikh.
  int sikhism;

  /// Number of catholics.
  @JsonKey(name: 'catholic_christian')
  int catholicism;

  /// Number of christians.
  @JsonKey(name: 'other_christians')
  int christianity;

  /// Number of people belonging to other religions.
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

  /// @nodoc
  factory Religion.fromJson(Map<String, dynamic> json) =>
      _$ReligionFromJson(json);
}
