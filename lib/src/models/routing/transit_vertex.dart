import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';
import 'routing.dart';
import 'vertex.dart';

part 'transit_vertex.g.dart';

@JsonSerializable(createToJson: false)

/// A [Vertex] that describes a point in a route that is in transit to indicate
/// a point in a [Leg], as such is not the end point or the start point of a journey.
class TransitVertex extends PlanVertex {
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String stopId;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String stopCode;

  @JsonKey(name: 'departure')
  int departureTimestamp;

  @JsonKey(name: 'arrival', fromJson: JsonTypeAdapter.zeroFromNull)
  int arrivalTimestamp;

  @JsonKey(fromJson: JsonTypeAdapter.zeroFromNull)
  int stopIndex;

  @JsonKey(fromJson: JsonTypeAdapter.zeroFromNull)
  int stopSequence;

  /// Get [DateTime] object based on [departureTimestamp]
  DateTime get departureDateTime =>
      DateTime.fromMillisecondsSinceEpoch(this.departureTimestamp);

  /// Get [DateTime] object based on [arrivalTimestamp]
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

  /// @nodoc
  factory TransitVertex.fromJson(Map<String, dynamic> json) =>
      _$TransitVertexFromJson(json);
}
