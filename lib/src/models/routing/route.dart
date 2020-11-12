import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import 'geometry_decoder.dart';
import 'route_summary.dart';

part 'route.g.dart';

/// Routing data retrieved from calling route API with walk, cycle or drive as the
/// route type.
@JsonSerializable(createToJson: false)
class Route with GeometryDecoder {
  /// Message about the status of the route request.
  @JsonKey(name: 'status_message')
  String statusMessage;

  /// Encoded string which can be decoded into a list of latitude and longitude
  /// coordinate points.
  @JsonKey(name: 'route_geometry')
  String encodedRouteGeometry;

  int status;

  /// List of instructions for the route.
  @JsonKey(name: 'route_instructions')
  List<List<dynamic>> routeInstructions;

  /// List of names for the route.
  @JsonKey(name: 'route_name')
  List<String> routeNames;

  /// Summary for the route.
  @JsonKey(name: 'route_summary')
  RouteSummary routeSummary;

  String viaRoute;

  String subtitle;

  @JsonKey(name: 'alternativeroute')
  List<Route> alternativeRoutes;

  @JsonKey(name: 'phyroute')
  Route phyRoute;

  /// Get decoded route geometry. For more information, refer to [GeometryDecoder]
  /// class.
  List<LatLng> get routeGeometry =>
      decode(isPublicTransport: false, encodedString: encodedRouteGeometry);

  Route(
      this.status,
      this.statusMessage,
      this.encodedRouteGeometry,
      this.routeInstructions,
      this.routeNames,
      this.routeSummary,
      this.viaRoute,
      this.subtitle);

  /// @nodoc
  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
