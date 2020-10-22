// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'religion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Religion _$ReligionFromJson(Map<String, dynamic> json) {
  return Religion(
    json['no_religion'] as int,
    json['buddhism'] as int,
    json['taoism'] as int,
    json['islam'] as int,
    json['hinduism'] as int,
    json['sikhism'] as int,
    json['catholic_christian'] as int,
    json['other_christians'] as int,
    json['other_religions'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$ReligionToJson(Religion instance) => <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'no_religion': instance.none,
      'buddhism': instance.buddhism,
      'taoism': instance.taoism,
      'islam': instance.islam,
      'hinduism': instance.hinduism,
      'sikhism': instance.sikhism,
      'catholic_christian': instance.catholicism,
      'other_christians': instance.christianity,
      'other_religions': instance.others,
    };
