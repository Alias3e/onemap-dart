// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseholdSize _$HouseholdSizeFromJson(Map<String, dynamic> json) {
  return HouseholdSize(
    json['person1'] as int,
    json['person2'] as int,
    json['person3'] as int,
    json['person4'] as int,
    json['person5'] as int,
    json['person6'] as int,
    json['person7'] as int,
    json['person_more_8'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$HouseholdSizeToJson(HouseholdSize instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'person1': instance.onePersonInHousehold,
      'person2': instance.twoPersonInHousehold,
      'person3': instance.threePersonInHousehold,
      'person4': instance.fourPersonInHousehold,
      'person5': instance.fivePersonInHousehold,
      'person6': instance.sixPersonInHousehold,
      'person7': instance.sevenPersonInHousehold,
      'person_more_8': instance.eightOrMorePersonInHousehold,
    };
