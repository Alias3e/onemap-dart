// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSummary _$RouteSummaryFromJson(Map<String, dynamic> json) {
  return RouteSummary(
    json['end_point'] as String,
    json['start_point'] as String,
    json['total_distance'] as int,
    json['total_time'] as int,
  );
}

Map<String, dynamic> _$RouteSummaryToJson(RouteSummary instance) =>
    <String, dynamic>{
      'end_point': instance.endPoint,
      'start_point': instance.startPoint,
      'total_time': instance.totalTime,
      'total_distance': instance.totalDistance,
    };
