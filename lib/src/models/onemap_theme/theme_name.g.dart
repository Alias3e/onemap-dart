// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeName _$ThemeNameFromJson(Map<String, dynamic> json) {
  return ThemeName(
    json['THEMENAME'] as String,
    json['QUERYNAME'] as String,
    json['ICON'] as String,
    json['CATEGORY'] as String,
    json['THEME_OWNER'] as String,
  );
}

Map<String, dynamic> _$ThemeNameToJson(ThemeName instance) => <String, dynamic>{
      'THEMENAME': instance.themeName,
      'QUERYNAME': instance.queryName,
      'ICON': instance.icon,
      'CATEGORY': instance.category,
      'THEME_OWNER': instance.themeOwner,
    };
