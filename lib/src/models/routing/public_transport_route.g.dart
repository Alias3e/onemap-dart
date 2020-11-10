// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_transport_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicTransportRoute _$PublicTransportRouteFromJson(Map<String, dynamic> json) {
  return PublicTransportRoute(
    json['debugOutput'] == null
        ? null
        : DebugOutput.fromJson(json['debugOutput'] as Map<String, dynamic>),
    json['elevationMetadata'] == null
        ? null
        : ElevationMetadata.fromJson(
            json['elevationMetadata'] as Map<String, dynamic>),
    json['plan'] == null
        ? null
        : Plan.fromJson(json['plan'] as Map<String, dynamic>),
    json['requestParameters'] == null
        ? null
        : RequestParameters.fromJson(
            json['requestParameters'] as Map<String, dynamic>),
  );
}
