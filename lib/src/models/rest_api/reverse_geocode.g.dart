// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReverseGeocode _$ReverseGeocodeFromJson(Map<String, dynamic> json) {
  return ReverseGeocode(
    (json['GeocodeInfo'] as List)
        ?.map((e) =>
            e == null ? null : GeocodeInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
