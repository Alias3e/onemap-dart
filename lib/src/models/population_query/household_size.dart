import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_size.g.dart';

/// Information about the size of a household retrieved from population query.
@JsonSerializable(createToJson: false)
class HouseholdSize extends PopulationData {
  /// Single person household.
  @JsonKey(name: 'person1')
  int onePersonInHousehold;

  /// 2 person household.
  @JsonKey(name: 'person2')
  int twoPersonInHousehold;

  /// 3 person household.
  @JsonKey(name: 'person3')
  int threePersonInHousehold;

  /// 4 person household.
  @JsonKey(name: 'person4')
  int fourPersonInHousehold;

  /// 5 person household.
  @JsonKey(name: 'person5')
  int fivePersonInHousehold;

  /// 6 person household.
  @JsonKey(name: 'person6')
  int sixPersonInHousehold;

  /// 7 person household.
  @JsonKey(name: 'person7')
  int sevenPersonInHousehold;

  /// 8 person or more household.
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
