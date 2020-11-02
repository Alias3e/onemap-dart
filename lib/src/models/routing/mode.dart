/// Types of transportation mode.
enum Mode { TRANSIT, BUS, RAIL }

/// Extension of enum to return enum as 'TRANSIT' instead of 'mode.TRANSIT'.
extension ModeToString on Mode {
  String asString() {
    return this == null ? this : this.toString().split('.').last;
  }
}
