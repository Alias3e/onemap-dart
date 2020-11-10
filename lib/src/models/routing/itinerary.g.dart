// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) {
  return Itinerary(
    json['duration'] as int,
    json['elevationGained'] as num,
    json['elevationLost'] as num,
    json['endTime'] as int,
    json['fare'] as String,
    (json['legs'] as List)
        ?.map((e) => e == null ? null : Leg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['startTime'] as int,
    json['tooSloped'] as bool,
    json['transfers'] as int,
    json['transitTime'] as int,
    json['waitingTime'] as int,
    (json['walkDistance'] as num)?.toDouble(),
    json['walkLimitExceeded'] as bool,
    json['walkTime'] as int,
  );
}
