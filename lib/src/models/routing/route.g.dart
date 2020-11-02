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

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      'status_message': instance.statusMessage,
      'route_geometry': instance.encodedRouteGeometry,
      'status': instance.status,
      'route_instructions': instance.routeInstructions,
      'route_name': instance.routeNames,
      'route_summary': instance.routeSummary,
      'viaRoute': instance.viaRoute,
      'subtitle': instance.subtitle,
    };
