// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planning_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanningArea _$PlanningAreaFromJson(Map<String, dynamic> json) {
  return PlanningArea(
    json['pln_area_n'] as String,
    JsonTypeAdapter.emptyFromNull(json['geojson']),
  );
}

Map<String, dynamic> _$PlanningAreaToJson(PlanningArea instance) =>
    <String, dynamic>{
      'pln_area_n': instance.planningAreaName,
      'geojson': JsonTypeAdapter.emptyToNull(instance.geoJsonString),
    };
