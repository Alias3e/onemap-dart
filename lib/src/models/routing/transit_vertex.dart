import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/routing/routing.dart';
import 'package:onemapsg/src/models/routing/vertex.dart';
import 'package:onemapsg/src/models/type_adapter.dart';

part 'transit_vertex.g.dart';

@JsonSerializable()

/// A [Vertex] that describes a point in a route that is in transit to indicate
/// a point in a [Leg], as such is not the end point or the start point of a journey.
class TransitVertex extends PlanVertex {
  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String stopId;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String stopCode;

  @JsonKey(name: 'departure')
  int departureTimestamp;

  @JsonKey(
      name: 'arrival',
      fromJson: JsonTypeAdapter.zeroFromNull,
      toJson: JsonTypeAdapter.nullToZero)
  int arrivalTimestamp;

  @JsonKey(
      fromJson: JsonTypeAdapter.zeroFromNull,
      toJson: JsonTypeAdapter.nullToZero)
  int stopIndex;

  @JsonKey(
      fromJson: JsonTypeAdapter.zeroFromNull,
      toJson: JsonTypeAdapter.nullToZero)
  int stopSequence;

  DateTime get departureDateTime =>
      DateTime.fromMillisecondsSinceEpoch(this.departureTimestamp);

  DateTime get arrivalDateTime =>
      DateTime.fromMillisecondsSinceEpoch(this.arrivalTimestamp);

  TransitVertex(
      this.stopId,
      this.stopCode,
      this.stopIndex,
      this.stopSequence,
      this.departureTimestamp,
      this.arrivalTimestamp,
      String orig,
      String name,
      double lat,
      double lon,
      String vertexType)
      : super(orig, name, lat, lon, vertexType);

  factory TransitVertex.fromJson(Map<String, dynamic> json) =>
      _$TransitVertexFromJson(json);
  Map<String, dynamic> toJson() => _$TransitVertexToJson(this);
}
