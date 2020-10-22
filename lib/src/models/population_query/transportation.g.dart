// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transportation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transportation _$TransportationFromJson(Map<String, dynamic> json) {
  return Transportation(
    json['bus'] as int,
    json['mrt'] as int,
    json['mrt_bus'] as int,
    json['mrt_car'] as int,
    json['mrt_other'] as int,
    json['taxi'] as int,
    json['car'] as int,
    json['pvt_chartered_bus'] as int,
    json['lorry_pickup'] as int,
    json['motorcycle_scooter'] as int,
    json['others'] as int,
    json['no_transport_required'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$TransportationToJson(Transportation instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'bus': instance.bus,
      'mrt': instance.mrt,
      'mrt_bus': instance.mrtAndBus,
      'mrt_car': instance.mrtAndCar,
      'mrt_other': instance.mrtAndOther,
      'taxi': instance.taxi,
      'car': instance.car,
      'pvt_chartered_bus': instance.privateCharteredBus,
      'lorry_pickup': instance.lorryOrPickup,
      'motorcycle_scooter': instance.motorcycleOrScooter,
      'others': instance.others,
      'no_transport_required': instance.noTransportRequired,
    };
