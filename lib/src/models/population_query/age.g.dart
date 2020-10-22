// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Age _$AgeFromJson(Map<String, dynamic> json) {
  return Age(
    json['age_0_4'] as int,
    json['age_5_9'] as int,
    json['age_10_14'] as int,
    json['age_15_19'] as int,
    json['age_20_24'] as int,
    json['age_25_29'] as int,
    json['age_30_34'] as int,
    json['age_35_39'] as int,
    json['age_40_44'] as int,
    json['age_45_49'] as int,
    json['age_50_54'] as int,
    json['age_55_59'] as int,
    json['age_60_64'] as int,
    json['age_65_69'] as int,
    json['age_70_74'] as int,
    json['age_75_79'] as int,
    json['age_80_84'] as int,
    json['age_85_over'] as int,
    json['total'] as int,
    json['gender'] as String,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$AgeToJson(Age instance) => <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'gender': instance.gender,
      'age_0_4': instance.ages0To4,
      'age_5_9': instance.ages5To9,
      'age_10_14': instance.ages10To14,
      'age_15_19': instance.ages15To19,
      'age_20_24': instance.ages20To24,
      'age_25_29': instance.ages25To29,
      'age_30_34': instance.ages30To34,
      'age_35_39': instance.ages35To39,
      'age_40_44': instance.ages40To44,
      'age_45_49': instance.ages45To49,
      'age_50_54': instance.ages50To54,
      'age_55_59': instance.ages55To59,
      'age_60_64': instance.ages60To64,
      'age_65_69': instance.ages65To69,
      'age_70_74': instance.ages70To74,
      'age_75_79': instance.ages75To79,
      'age_80_84': instance.ages80To84,
      'age_85_over': instance.ages85AndOver,
      'total': instance.total,
    };
