import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_size.g.dart';

@JsonSerializable(createToJson: false)

/// Information about the size of a household retrieved from population query.
class HouseholdSize extends PopulationData {
  @JsonKey(name: 'person1')
  int onePersonInHousehold;

  @JsonKey(name: 'person2')
  int twoPersonInHousehold;

  @JsonKey(name: 'person3')
  int threePersonInHousehold;

  @JsonKey(name: 'person4')
  int fourPersonInHousehold;

  @JsonKey(name: 'person5')
  int fivePersonInHousehold;

  @JsonKey(name: 'person6')
  int sixPersonInHousehold;

  @JsonKey(name: 'person7')
  int sevenPersonInHousehold;

  @JsonKey(name: 'person_more_8')
  int eightOrMorePersonInHousehold;

  HouseholdSize(
      this.onePersonInHousehold,
      this.twoPersonInHousehold,
      this.threePersonInHousehold,
      this.fourPersonInHousehold,
      this.fivePersonInHousehold,
      this.sixPersonInHousehold,
      this.sevenPersonInHousehold,
      this.eightOrMorePersonInHousehold,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory HouseholdSize.fromJson(Map<String, dynamic> json) =>
      _$HouseholdSizeFromJson(json);
}
