// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_results_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeResultsOverview _$ThemeResultsOverviewFromJson(Map<String, dynamic> json) {
  return ThemeResultsOverview(
    json['FeatCount'] as int,
    json['Theme_Name'] as String,
    json['Category'] as String,
    json['Owner'] as String,
    json['DateTime'] == null
        ? null
        : OneMapDateTime.fromJson(json['DateTime'] as Map<String, dynamic>),
  );
}
