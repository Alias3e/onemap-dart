import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import 'geometry_decoder.dart';
import 'route_summary.dart';

part 'route.g.dart';

@JsonSerializable()

/// Routing data retrieved from calling route API with walk, cycle or drive as the
/// route type.
class Route with GeometryDecoder {
  @JsonKey(name: 'status_message')
  String statusMessage;

  @JsonKey(name: 'route_geometry')
  String encodedRouteGeometry;

  int status;

  @JsonKey(name: 'route_instructions')
  List<List<dynamic>> routeInstructions;

  @JsonKey(name: 'route_name')
  List<String> routeNames;

  @JsonKey(name: 'route_summary')
  RouteSummary routeSummary;

  String viaRoute;

  String subtitle;

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

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
  Map<String, dynamic> toJson() => _$RouteToJson(this);
}
