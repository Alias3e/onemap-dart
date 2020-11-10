// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) {
  return Route(
    json['status'] as int,
    json['status_message'] as String,
    json['route_geometry'] as String,
    (json['route_instructions'] as List)?.map((e) => e as List)?.toList(),
    (json['route_name'] as List)?.map((e) => e as String)?.toList(),
    json['route_summary'] == null
        ? null
        : RouteSummary.fromJson(json['route_summary'] as Map<String, dynamic>),
    json['viaRoute'] as String,
    json['subtitle'] as String,
  );
}
