// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ethnic_distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EthnicDistribution _$EthnicDistributionFromJson(Map<String, dynamic> json) {
  return EthnicDistribution(
    json['chinese'] as int,
    json['malays'] as int,
    json['indian'] as int,
    json['others'] as int,
    json['gender'] as String,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$EthnicDistributionToJson(EthnicDistribution instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'gender': instance.gender,
      'chinese': instance.chinese,
      'malays': instance.malays,
      'indian': instance.indian,
      'others': instance.others,
    };
