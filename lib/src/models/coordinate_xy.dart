import 'package:json_annotation/json_annotation.dart';

part 'coordinate_xy.g.dart';

@JsonSerializable()

/// X, Y coordinates in SVY21 format.
class CoordinateXY {
  @JsonKey(name: 'X')
  double x;
  @JsonKey(name: 'Y')
  double y;

  CoordinateXY(this.x, this.y);

  factory CoordinateXY.fromJson(Map<String, dynamic> json) =>
      _$CoordinateXYFromJson(json);
  Map<String, dynamic> toJson() => _$CoordinateXYToJson(this);

  @override
  String toString() => '($x, $y)';
}
