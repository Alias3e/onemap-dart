// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeInfo _$ThemeInfoFromJson(Map<String, dynamic> json) {
  return ThemeInfo(
    (json['Theme_Names'] as List)
        ?.map((e) =>
            e == null ? null : ThemeName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ThemeInfoToJson(ThemeInfo instance) => <String, dynamic>{
      'Theme_Names': instance.themeNames,
    };
