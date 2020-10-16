// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_latlong.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordinateLatLong _$CoordinateLatLonFromJson(Map<String, dynamic> json) {
  return CoordinateLatLong(
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CoordinateLatLonToJson(CoordinateLatLong instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
