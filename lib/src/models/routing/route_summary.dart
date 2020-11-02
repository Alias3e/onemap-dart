import 'package:json_annotation/json_annotation.dart';

part 'route_summary.g.dart';

@JsonSerializable()

/// Summary of route when route type is drive, cycle or walk.
class RouteSummary {
  @JsonKey(name: 'end_point')
  String endPoint;

  @JsonKey(name: 'start_point')
  String startPoint;

  @JsonKey(name: 'total_time')
  int totalTime;

  @JsonKey(name: 'total_distance')
  int totalDistance;

  RouteSummary(
      this.endPoint, this.startPoint, this.totalDistance, this.totalTime);

  factory RouteSummary.fromJson(Map<String, dynamic> json) =>
      _$RouteSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$RouteSummaryToJson(this);
}
