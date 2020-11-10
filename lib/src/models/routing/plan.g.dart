// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return Plan(
    json['date'] as int,
    json['to'] == null
        ? null
        : PlanVertex.fromJson(json['to'] as Map<String, dynamic>),
    json['from'] == null
        ? null
        : PlanVertex.fromJson(json['from'] as Map<String, dynamic>),
    (json['itineraries'] as List)
        ?.map((e) =>
            e == null ? null : Itinerary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
