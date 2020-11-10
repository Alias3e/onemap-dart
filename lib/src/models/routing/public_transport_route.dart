import 'package:json_annotation/json_annotation.dart';

import 'routing.dart';

part 'public_transport_route.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)

/// Routing data retrieved from calling route API with public transport as the
/// route type.
class PublicTransportRoute {
  RequestParameters requestParameters;
  Plan plan;
  DebugOutput debugOutput;
  ElevationMetadata elevationMetadata;

  PublicTransportRoute(this.debugOutput, this.elevationMetadata, this.plan,
      this.requestParameters);

  /// @nodoc
  factory PublicTransportRoute.fromJson(Map<String, dynamic> json) =>
      _$PublicTransportRouteFromJson(json);
}
