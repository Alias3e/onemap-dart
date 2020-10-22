// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseholdStructure _$HouseholdStructureFromJson(Map<String, dynamic> json) {
  return HouseholdStructure(
    json['no_family_nucleus'] as int,
    json['ofn_1_gen'] as int,
    json['ofn_2_gen'] as int,
    json['ofn_3_more_gen'] as int,
    json['tfn_1to2_gen'] as int,
    json['tfn_3_more_gen'] as int,
    json['three_more_fam_nucleus'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$HouseholdStructureToJson(HouseholdStructure instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'no_family_nucleus': instance.noFamilyNucleus,
      'ofn_1_gen': instance.oneFamilyNucleusOneGeneration,
      'ofn_2_gen': instance.oneFamilyNucleusTwoGenerations,
      'ofn_3_more_gen': instance.oneFamilyNucleusThreeOrMoreGenerations,
      'tfn_1to2_gen': instance.twoFamilyNucleusOneToTwoGeneration,
      'tfn_3_more_gen': instance.twoFamilyNucleusThreeOrMoreGenerations,
      'three_more_fam_nucleus': instance.threeOrMoreFamilyNucleus,
    };
