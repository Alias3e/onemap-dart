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

  /// A name given to the vertex.
  String name;

  /// Longitude of vertex.
  double lon;

  /// Latitude of vertex.
  double lat;

  /// The type of vertex. Could either be [VERTEX_TYPE_NORMAL] or [VERTEX_TYPE_TRANSIT]
  String vertexType;

  /// Get a [LatLng] object based on this object latitude and longitude.
  LatLng get latLong => LatLng(this.lat, this.lon);

  Vertex(this.name, this.lat, this.lon, this.vertexType);
}
