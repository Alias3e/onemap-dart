import 'package:latlong/latlong.dart';

import 'plan_vertex.dart';
import 'transit_vertex.dart';

/// Base class for [PlanVertex] and [TransitVertex]. Represent a point in
/// the route.
abstract class Vertex {
  /// Indicates that the vertex is either the start of end point.
  static const VERTEX_TYPE_NORMAL = 'NORMAL';

  /// Indicates that the vertex is part of the transit route.
  static const VERTEX_TYPE_TRANSIT = 'TRANSIT';

  String name;

  double lon;

  double lat;

  String vertexType;

  LatLng get latLong => LatLng(this.lat, this.lon);

  Vertex(this.name, this.lat, this.lon, this.vertexType);
}
