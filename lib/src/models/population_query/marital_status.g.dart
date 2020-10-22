// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marital_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaritalStatus _$MaritalStatusFromJson(Map<String, dynamic> json) {
  return MaritalStatus(
    json['single'] as int,
    json['married'] as int,
    json['widowed'] as int,
    json['divorced'] as int,
    json['gender'] as String,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$MaritalStatusToJson(MaritalStatus instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'gender': instance.gender,
      'single': instance.single,
      'married': instance.married,
      'widowed': instance.widowed,
      'divorced': instance.divorced,
    };
