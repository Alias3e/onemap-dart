import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';
import 'routing.dart';
import 'vertex.dart';

part 'transit_vertex.g.dart';

/// A [Vertex] that describes a point in a route that is in transit to indicate
/// a point in a [Leg], as such is not the end point or the start point of a journey.
@JsonSerializable(createToJson: false)
class TransitVertex extends PlanVertex {
  ///  MRT or bus stop id.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String stopId;

  ///  MRT or bus stop code.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String stopCode;

  /// Departure timestamp in millseconds.
  @JsonKey(name: 'departure')
  int departureTimestamp;

  /// Arrival timestamp in milliseconds.
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
