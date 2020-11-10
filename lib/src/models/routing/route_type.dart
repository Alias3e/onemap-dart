/// Defines the various type of route.
enum RouteType { walk, drive, cycle }

/// Extension of enum to return enum as 'walk' instead of 'routeType.walk'.
extension RouteTypeToString on RouteType {
  /// Gets a [String] equivalent to the enum value.
  String asString() {
    return this == null ? this : this.toString().split('.').last;
  }
}
