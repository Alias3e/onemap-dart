// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_xy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordinateXY _$CoordinateXYFromJson(Map<String, dynamic> json) {
  return CoordinateXY(
    (json['X'] as num)?.toDouble(),
    (json['Y'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CoordinateXYToJson(CoordinateXY instance) =>
    <String, dynamic>{
      'X': instance.x,
      'Y': instance.y,
    };
