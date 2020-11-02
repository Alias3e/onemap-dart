// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestParameters _$RequestParametersFromJson(Map<String, dynamic> json) {
  return RequestParameters(
    json['date'] as String,
    json['time'] as String,
    json['arriveBy'] as String,
    json['fromPlace'] as String,
    json['maxTransfers'] as String,
    json['maxWalkDistance'] as String,
    json['mode'] as String,
    json['numItineraries'] as String,
    json['otherThanPreferredRoutesPenalty'] as String,
    json['preferredRoutes'] as String,
    json['showIntermediateStops'] as String,
    json['toPlace'] as String,
    json['transferPenalty'] as String,
    json['waitAtBeginningFactor'] as String,
    json['walkReluctance'] as String,
  );
}

Map<String, dynamic> _$RequestParametersToJson(RequestParameters instance) =>
    <String, dynamic>{
      'date': instance.date,
      'preferredRoutes': instance.preferredRoutes,
      'walkReluctance': instance.walkReluctance,
      'fromPlace': instance.fromPlace,
      'transferPenalty': instance.transferPenalty,
      'maxWalkDistance': instance.maxWalkDistance,
      'maxTransfers': instance.maxTransfers,
      'otherThanPreferredRoutesPenalty':
          instance.otherThanPreferredRoutesPenalty,
      'numItineraries': instance.numItineraries,
      'waitAtBeginningFactor': instance.waitAtBeginningFactor,
      'mode': instance.mode,
      'arriveBy': instance.arriveBy,
      'showIntermediateStops': instance.showIntermediateStops,
      'toPlace': instance.toPlace,
      'time': instance.time,
    };
