// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationStatus _$EducationStatusFromJson(Map<String, dynamic> json) {
  return EducationStatus(
    json['pre_primary'] as int,
    json['primary'] as int,
    json['secondary'] as int,
    json['post_secondary'] as int,
    json['polytechnic'] as int,
    json['prof_qualification_diploma'] as int,
    json['university'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$EducationStatusToJson(EducationStatus instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'pre_primary': instance.prePrimary,
      'primary': instance.primary,
      'secondary': instance.secondary,
      'post_secondary': instance.postSecondary,
      'polytechnic': instance.polytechnic,
      'prof_qualification_diploma': instance.profQualificationDiploma,
      'university': instance.university,
    };
