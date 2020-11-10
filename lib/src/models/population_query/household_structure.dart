import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_structure.g.dart';

@JsonSerializable(createToJson: false)

/// Family structure information retrieved from population query.
class HouseholdStructure extends PopulationData {
  @JsonKey(name: 'no_family_nucleus')
  int noFamilyNucleus;

  @JsonKey(name: 'ofn_1_gen')
  int oneFamilyNucleusOneGeneration;

  @JsonKey(name: 'ofn_2_gen')
  int oneFamilyNucleusTwoGenerations;

  @JsonKey(name: 'ofn_3_more_gen')
  int oneFamilyNucleusThreeOrMoreGenerations;

  @JsonKey(name: 'tfn_1to2_gen')
  int twoFamilyNucleusOneToTwoGeneration;

  @JsonKey(name: 'tfn_3_more_gen')
  int twoFamilyNucleusThreeOrMoreGenerations;

  @JsonKey(name: 'three_more_fam_nucleus')
  int threeOrMoreFamilyNucleus;

  HouseholdStructure(
      this.noFamilyNucleus,
      this.oneFamilyNucleusOneGeneration,
      this.oneFamilyNucleusTwoGenerations,
      this.oneFamilyNucleusThreeOrMoreGenerations,
      this.twoFamilyNucleusOneToTwoGeneration,
      this.twoFamilyNucleusThreeOrMoreGenerations,
      this.threeOrMoreFamilyNucleus,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory HouseholdStructure.fromJson(Map<String, dynamic> json) =>
      _$HouseholdStructureFromJson(json);
}
