// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'economic_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EconomicStatus _$EconomicStatusFromJson(Map<String, dynamic> json) {
  return EconomicStatus(
    json['employed'] as int,
    json['unemployed'] as int,
    json['inactive'] as int,
    json['gender'] as String,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$EconomicStatusToJson(EconomicStatus instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'gender': instance.gender,
      'employed': instance.employed,
      'unemployed': instance.unemployed,
      'inactive': instance.inactive,
    };
