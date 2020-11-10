// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebugOutput _$DebugOutputFromJson(Map<String, dynamic> json) {
  return DebugOutput(
    json['totalTime'] as int,
    json['pathCalculationTime'] as int,
    (json['pathTimes'] as List)?.map((e) => e as int)?.toList(),
    json['precalculationTime'] as int,
    json['renderingTime'] as int,
    json['timedOut'] as bool,
  );
}
