// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LegGeometry _$LegGeometryFromJson(Map<String, dynamic> json) {
  return LegGeometry(
    json['length'] as int,
    json['points'] as String,
  );
}

Map<String, dynamic> _$LegGeometryToJson(LegGeometry instance) =>
    <String, dynamic>{
      'points': instance.points,
      'length': instance.length,
    };
