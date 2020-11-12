import 'package:json_annotation/json_annotation.dart';

part 'route_summary.g.dart';

/// Summary of route when route type is drive, cycle or walk.
@JsonSerializable(createToJson: false)
class RouteSummary {
  /// Name of the end destination.
  @JsonKey(name: 'end_point')
  String endPoint;

  /// Name of the start point.
  @JsonKey(name: 'start_point')
  String startPoint;

  /// Total time required to complete the route.
  @JsonKey(name: 'total_time')
  int totalTime;

  /// Total distance of the route.
  @JsonKey(name: 'total_distance')
  int totalDistance;

  RouteSummary(
      this.endPoint, this.startPoint, this.totalDistance, this.totalTime);

  /// @nodoc
  factory RouteSummary.fromJson(Map<String, dynamic> json) =>
      _$RouteSummaryFromJson(json);
}
