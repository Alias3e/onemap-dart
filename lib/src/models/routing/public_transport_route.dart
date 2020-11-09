import 'package:json_annotation/json_annotation.dart';

import 'routing.dart';

part 'public_transport_route.g.dart';

@JsonSerializable(explicitToJson: true)

/// Routing data retrieved from calling route API with public transport as the
/// route type.
class PublicTransportRoute {
  RequestParameters requestParameters;
  Plan plan;
  DebugOutput debugOutput;
  ElevationMetadata elevationMetadata;

  PublicTransportRoute(this.debugOutput, this.elevationMetadata, this.plan,
      this.requestParameters);

  factory PublicTransportRoute.fromJson(Map<String, dynamic> json) =>
      _$PublicTransportRouteFromJson(json);

  Map<String, dynamic> toJson() => _$PublicTransportRouteToJson(this);
}
