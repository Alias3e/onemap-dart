import 'package:json_annotation/json_annotation.dart';

import 'leg.dart';

part 'leg_geometry.g.dart';

/// Data object that contains the list of points for a [Leg]. The geometry is
/// encoded and would require decoding.
@JsonSerializable(createToJson: false)
class LegGeometry {
  /// Encoded geomtry.
  String points;

  int length;

  LegGeometry(this.length, this.points);

  /// @nodoc
  factory LegGeometry.fromJson(Map<String, dynamic> json) =>
      _$LegGeometryFromJson(json);
}
