import 'package:json_annotation/json_annotation.dart';

import 'leg.dart';

part 'leg_geometry.g.dart';

@JsonSerializable(createToJson: false)

/// Data object that contains the list of points for a [Leg]. The geometry is
/// encoded and would require decoding.
class LegGeometry {
  String points;

  int length;

  LegGeometry(this.length, this.points);

  /// @nodoc
  factory LegGeometry.fromJson(Map<String, dynamic> json) =>
      _$LegGeometryFromJson(json);
}
