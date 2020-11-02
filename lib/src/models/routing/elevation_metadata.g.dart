// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elevation_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElevationMetadata _$ElevationMetadataFromJson(Map<String, dynamic> json) {
  return ElevationMetadata(
    (json['ellipsoidToGeoidDifference'] as num)?.toDouble(),
    json['geoidElevation'] as bool,
  );
}

Map<String, dynamic> _$ElevationMetadataToJson(ElevationMetadata instance) =>
    <String, dynamic>{
      'ellipsoidToGeoidDifference': instance.ellipsoidToGeoidDifference,
      'geoidElevation': instance.geoidElevation,
    };
