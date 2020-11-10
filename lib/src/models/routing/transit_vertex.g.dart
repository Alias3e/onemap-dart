// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_vertex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitVertex _$TransitVertexFromJson(Map<String, dynamic> json) {
  return TransitVertex(
    JsonTypeAdapter.emptyFromNull(json['stopId']),
    JsonTypeAdapter.emptyFromNull(json['stopCode']),
    JsonTypeAdapter.zeroFromNull(json['stopIndex']),
    JsonTypeAdapter.zeroFromNull(json['stopSequence']),
    json['departure'] as int,
    JsonTypeAdapter.zeroFromNull(json['arrival']),
    JsonTypeAdapter.emptyFromNull(json['orig']),
    json['name'] as String,
    (json['lat'] as num)?.toDouble(),
    (json['lon'] as num)?.toDouble(),
    json['vertexType'] as String,
  );
}
