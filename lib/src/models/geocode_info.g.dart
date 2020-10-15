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

Map<String, dynamic> _$GeocodeInfoToJson(GeocodeInfo instance) =>
    <String, dynamic>{
      'BUILDINGNAME': JsonTypeAdapter.emptyToNull(instance.buildingName),
      'FEATURE_NAME': JsonTypeAdapter.emptyToNull(instance.featureName),
      'BLOCK': JsonTypeAdapter.emptyToNull(instance.block),
      'ROAD': JsonTypeAdapter.emptyToNull(instance.road),
      'POSTALCODE': JsonTypeAdapter.emptyToNull(instance.postalCode),
      'XCOORD': JsonTypeAdapter.doubleToString(instance.x),
      'YCOORD': JsonTypeAdapter.doubleToString(instance.y),
      'LATITUDE': JsonTypeAdapter.doubleToString(instance.latitude),
      'LONGITUDE': JsonTypeAdapter.doubleToString(instance.longitude),
    };
