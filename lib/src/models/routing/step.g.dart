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
