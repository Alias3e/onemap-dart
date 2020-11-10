// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodeInfo _$GeocodeInfoFromJson(Map<String, dynamic> json) {
  return GeocodeInfo(
    JsonTypeAdapter.emptyFromNull(json['BUILDINGNAME']),
    JsonTypeAdapter.emptyFromNull(json['FEATURE_NAME']),
    JsonTypeAdapter.emptyFromNull(json['ROAD']),
    JsonTypeAdapter.emptyFromNull(json['BLOCK']),
    JsonTypeAdapter.emptyFromNull(json['POSTALCODE']),
    JsonTypeAdapter.doubleFromString(json['XCOORD'] as String),
    JsonTypeAdapter.doubleFromString(json['YCOORD'] as String),
    JsonTypeAdapter.doubleFromString(json['LATITUDE'] as String),
    JsonTypeAdapter.doubleFromString(json['LONGITUDE'] as String),
  );
}
