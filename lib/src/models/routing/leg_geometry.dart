import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/routing/leg.dart';

part 'leg_geometry.g.dart';

@JsonSerializable()

/// Data object that contains the list of points for a [Leg]. The geometry is
/// encoded and would require decoding.
class LegGeometry {
  String points;

  int length;

  LegGeometry(this.length, this.points);

  factory LegGeometry.fromJson(Map<String, dynamic> json) =>
      _$LegGeometryFromJson(json);
  Map<String, dynamic> toJson() => _$LegGeometryToJson(this);
}
