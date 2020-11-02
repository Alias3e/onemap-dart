import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/routing/plan.dart';
import 'package:onemapsg/src/models/routing/vertex.dart';
import 'package:onemapsg/src/models/type_adapter.dart';

part 'plan_vertex.g.dart';

@JsonSerializable()

/// An object which specify a point of interest on the route. This [Vertex] type
/// is contained inside [Plan] object and indicates the start and end points of a
/// journey.
class PlanVertex extends Vertex {
  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String orig;

  PlanVertex(this.orig, String name, double lat, double lon, String vertexType)
      : super(name, lat, lon, vertexType);

  factory PlanVertex.fromJson(Map<String, dynamic> json) =>
      _$PlanVertexFromJson(json);
  Map<String, dynamic> toJson() => _$PlanVertexToJson(this);
}
