import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';
import 'plan.dart';
import 'vertex.dart';

part 'plan_vertex.g.dart';

@JsonSerializable(createToJson: false)

/// An object which specify a point of interest on the route. This [Vertex] type
/// is contained inside [Plan] object and indicates the start and end points of a
/// journey.
class PlanVertex extends Vertex {
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String orig;

  PlanVertex(this.orig, String name, double lat, double lon, String vertexType)
      : super(name, lat, lon, vertexType);

  /// @nodoc
  factory PlanVertex.fromJson(Map<String, dynamic> json) =>
      _$PlanVertexFromJson(json);
}
