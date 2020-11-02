import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';
import 'package:onemapsg/src/models/routing/leg.dart';

part 'step.g.dart';

@JsonSerializable()

/// A [Leg] might involved multiple [Step]s to complete. This class contains
/// information for individual [Step]s in a route.
class Step {
  double distance;
  String relativeDirection;
  String streetName;
  String absoluteDirection;
  bool stayOn;
  bool area;
  bool bogusName;
  double lon;
  double lat;
  List<dynamic> elevation;

  LatLng get latLong => LatLng(this.lat, this.lon);

  Step(
      this.lat,
      this.lon,
      this.distance,
      this.absoluteDirection,
      this.area,
      this.bogusName,
      this.elevation,
      this.relativeDirection,
      this.stayOn,
      this.streetName);

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
  Map<String, dynamic> toJson() => _$StepToJson(this);
}
