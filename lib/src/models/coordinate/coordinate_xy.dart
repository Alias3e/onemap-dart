import 'package:json_annotation/json_annotation.dart';

part 'coordinate_xy.g.dart';

/// X, Y coordinates in SVY21 format.
@JsonSerializable(createToJson: false)
class CoordinateXY {
  /// X coordinate.
  @JsonKey(name: 'X')
  double x;

  /// Y coordinate.
  @JsonKey(name: 'Y')
  double y;
  CoordinateXY(this.x, this.y);

  /// @nodoc
  factory CoordinateXY.fromJson(Map<String, dynamic> json) =>
      _$CoordinateXYFromJson(json);

  @override
  String toString() => '($x, $y)';
}
