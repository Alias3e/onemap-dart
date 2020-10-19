// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_results_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeResultsItem _$ThemeResultsItemFromJson(Map<String, dynamic> json) {
  return ThemeResultsItem(
    json['NAME'] as String,
    json['DESCRIPTION'] as String,
    json['ADDRESSPOSTALCODE'] as String,
    json['ADDRESSSTREETNAME'] as String,
    json['LatLng'] as String,
    json['ICON_NAME'] as String,
  );
}

Map<String, dynamic> _$ThemeResultsItemToJson(ThemeResultsItem instance) =>
    <String, dynamic>{
      'NAME': instance.name,
      'DESCRIPTION': instance.description,
      'ADDRESSPOSTALCODE': instance.postalCode,
      'ADDRESSSTREETNAME': instance.address,
      'LatLng': instance.latLongString,
      'ICON_NAME': instance.iconName,
    };
