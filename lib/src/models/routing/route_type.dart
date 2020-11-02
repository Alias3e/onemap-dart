/// Defines the various type of route.
enum RouteType { walk, drive, cycle }

/// Extension of enum to return enum as 'walk' instead of 'routeType.walk'.
extension RouteTypeToString on RouteType {
  String asString() {
    return this == null ? this : this.toString().split('.').last;
  }
}
