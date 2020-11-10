// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_vertex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanVertex _$PlanVertexFromJson(Map<String, dynamic> json) {
  return PlanVertex(
    JsonTypeAdapter.emptyFromNull(json['orig']),
    json['name'] as String,
    (json['lat'] as num)?.toDouble(),
    (json['lon'] as num)?.toDouble(),
    json['vertexType'] as String,
  );
}
