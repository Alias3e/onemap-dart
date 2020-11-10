// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leg _$LegFromJson(Map<String, dynamic> json) {
  return Leg(
    (json['distance'] as num)?.toDouble(),
    json['mode'] as String,
    json['route'] as String,
    json['endTime'] as int,
    json['startTime'] as int,
    JsonTypeAdapter.emptyFromNull(json['agencyId']),
    JsonTypeAdapter.emptyFromNull(json['agencyName']),
    json['agencyTimeZoneOffset'] as int,
    JsonTypeAdapter.emptyFromNull(json['agencyUrl']),
    json['arrivalDelay'] as int,
    json['departureDelay'] as int,
    json['duration'] as int,
    json['from'] == null
        ? null
        : TransitVertex.fromJson(json['from'] as Map<String, dynamic>),
    json['interlineWithPreviousLeg'] as bool,
    (json['intermediateStops'] as List)
        ?.map((e) => e == null
            ? null
            : TransitVertex.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['legGeometry'] == null
        ? null
        : LegGeometry.fromJson(json['legGeometry'] as Map<String, dynamic>),
    json['numIntermediateStops'] as int,
    json['pathway'] as bool,
    json['realTime'] as bool,
    json['rentedBike'] as bool,
    JsonTypeAdapter.emptyFromNull(json['routeId']),
    JsonTypeAdapter.emptyFromNull(json['routeLongName']),
    JsonTypeAdapter.emptyFromNull(json['routeShortName']),
    JsonTypeAdapter.zeroFromNull(json['routeType']),
    JsonTypeAdapter.emptyFromNull(json['serviceDate']),
    (json['steps'] as List)
        ?.map(
            (e) => e == null ? null : Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['to'] == null
        ? null
        : TransitVertex.fromJson(json['to'] as Map<String, dynamic>),
    json['transitLeg'] as bool,
    JsonTypeAdapter.emptyFromNull(json['tripId']),
  );
}
