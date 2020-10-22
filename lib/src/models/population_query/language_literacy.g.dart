// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_literacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageLiteracy _$LanguageLiteracyFromJson(Map<String, dynamic> json) {
  return LanguageLiteracy(
    json['no_literate'] as int,
    json['l1_eng'] as int,
    json['l1_chi'] as int,
    json['l1_mal'] as int,
    json['l1_tam'] as int,
    json['l1_non_off'] as int,
    json['l2_eng_chi'] as int,
    json['l2_eng_mal'] as int,
    json['l2_eng_tam'] as int,
    json['l2_eng_non_off'] as int,
    json['l2_other_two'] as int,
    json['l3_eng_chi_mal'] as int,
    json['l3_eng_mal_tam'] as int,
    json['l3_other_three'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$LanguageLiteracyToJson(LanguageLiteracy instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'no_literate': instance.illiterate,
      'l1_chi': instance.chineseOnly,
      'l1_eng': instance.englishOnly,
      'l1_mal': instance.malayOnly,
      'l1_tam': instance.tamilOnly,
      'l1_non_off': instance.unofficialLanguageOnly,
      'l2_eng_chi': instance.englishAndChinese,
      'l2_eng_mal': instance.englishAndMalay,
      'l2_eng_tam': instance.englishAndTamil,
      'l2_eng_non_off': instance.englishAndUnofficialLanguage,
      'l2_other_two': instance.anyOtherTwoLanguages,
      'l3_eng_chi_mal': instance.englishChineseAndMalay,
      'l3_eng_mal_tam': instance.englishMalayAndTamil,
      'l3_other_three': instance.anyOtherThreeLanguages,
    };
