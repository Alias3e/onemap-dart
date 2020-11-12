import 'package:json_annotation/json_annotation.dart';

import 'routing.dart';

part 'public_transport_route.g.dart';

/// Routing data retrieved from calling route API with public transport as the
/// route type.
@JsonSerializable(explicitToJson: true, createToJson: false)
class PublicTransportRoute {
  /// Contains information about the route request.
  RequestParameters requestParameters;
  // Contains the transit plan for the route.
  Plan plan;
  DebugOutput debugOutput;
  ElevationMetadata elevationMetadata;

  PublicTransportRoute(this.debugOutput, this.elevationMetadata, this.plan,
      this.requestParameters);

  /// @nodoc
  factory PublicTransportRoute.fromJson(Map<String, dynamic> json) =>
      _$PublicTransportRouteFromJson(json);
}
