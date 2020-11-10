import 'package:json_annotation/json_annotation.dart';

part 'coordinate_xy.g.dart';

@JsonSerializable(createToJson: false)

/// X, Y coordinates in SVY21 format.
class CoordinateXY {
  @JsonKey(name: 'X')
  double x;
  @JsonKey(name: 'Y')
  double y;

  CoordinateXY(this.x, this.y);

  /// @nodoc
  factory CoordinateXY.fromJson(Map<String, dynamic> json) =>
      _$CoordinateXYFromJson(json);

  @override
  String toString() => '($x, $y)';
}
