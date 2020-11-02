// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Step _$StepFromJson(Map<String, dynamic> json) {
  return Step(
    (json['lat'] as num)?.toDouble(),
    (json['lon'] as num)?.toDouble(),
    (json['distance'] as num)?.toDouble(),
    json['absoluteDirection'] as String,
    json['area'] as bool,
    json['bogusName'] as bool,
    json['elevation'] as List,
    json['relativeDirection'] as String,
    json['stayOn'] as bool,
    json['streetName'] as String,
  );
}

Map<String, dynamic> _$StepToJson(Step instance) => <String, dynamic>{
      'distance': instance.distance,
      'relativeDirection': instance.relativeDirection,
      'streetName': instance.streetName,
      'absoluteDirection': instance.absoluteDirection,
      'stayOn': instance.stayOn,
      'area': instance.area,
      'bogusName': instance.bogusName,
      'lon': instance.lon,
      'lat': instance.lat,
      'elevation': instance.elevation,
    };
