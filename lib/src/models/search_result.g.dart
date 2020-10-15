// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResult(
    searchValue: json['SEARCHVAL'] as String,
    blockNumber: json['BLK_NO'] as String,
    roadName: json['ROAD_NAME'] as String,
    building: json['BUILDING'] as String,
    address: json['ADDRESS'] as String,
    postal: json['POSTAL'] as String,
    x: JsonTypeAdapter.doubleFromString(json['X'] as String),
    y: JsonTypeAdapter.doubleFromString(json['Y'] as String),
    latitude: JsonTypeAdapter.doubleFromString(json['LATITUDE'] as String),
    longitude: JsonTypeAdapter.doubleFromString(json['LONGITUDE'] as String),
  );
}

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'SEARCHVAL': instance.searchValue,
      'BLK_NO': instance.blockNumber,
      'ROAD_NAME': instance.roadName,
      'BUILDING': instance.building,
      'ADDRESS': instance.address,
      'POSTAL': instance.postal,
      'X': JsonTypeAdapter.doubleToString(instance.x),
      'Y': JsonTypeAdapter.doubleToString(instance.y),
      'LATITUDE': JsonTypeAdapter.doubleToString(instance.latitude),
      'LONGITUDE': JsonTypeAdapter.doubleToString(instance.longitude),
    };
