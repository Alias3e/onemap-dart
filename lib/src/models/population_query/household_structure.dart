import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_structure.g.dart';

/// Family structure information retrieved from population query.
@JsonSerializable(createToJson: false)
class HouseholdStructure extends PopulationData {
  /// No family nucleus.
  @JsonKey(name: 'no_family_nucleus')
  int noFamilyNucleus;

  /// Single generation family nucleus.
  @JsonKey(name: 'ofn_1_gen')
  int oneFamilyNucleusOneGeneration;

  /// Single family nucleus consisting of 2 generations.
  @JsonKey(name: 'ofn_2_gen')
  int oneFamilyNucleusTwoGenerations;

  /// Single family nucleus consisting of 3 or more generations.
  @JsonKey(name: 'ofn_3_more_gen')
  int oneFamilyNucleusThreeOrMoreGenerations;

  /// Two family nucleus consisting of 1 or 2 generations.
  @JsonKey(name: 'tfn_1to2_gen')
  int twoFamilyNucleusOneToTwoGeneration;

  /// Two family nucleus with 3 or more generations.
  @JsonKey(name: 'tfn_3_more_gen')
  int twoFamilyNucleusThreeOrMoreGenerations;

  /// Three or more family nucleus.
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
