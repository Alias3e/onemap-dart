// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_languages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpokenLanguages _$SpokenLanguagesFromJson(Map<String, dynamic> json) {
  return SpokenLanguages(
    json['english'] as int,
    json['mandarin'] as int,
    json['chinese_dialects'] as int,
    json['malay'] as int,
    json['tamil'] as int,
    json['other_indian_languages'] as int,
    json['others'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$SpokenLanguagesToJson(SpokenLanguages instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'english': instance.english,
      'mandarin': instance.mandarin,
      'chinese_dialects': instance.chineseDialects,
      'malay': instance.malay,
      'tamil': instance.tamil,
      'other_indian_languages': instance.otherIndianLanguages,
      'others': instance.others,
    };
