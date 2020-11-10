import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import 'leg.dart';

part 'step.g.dart';

@JsonSerializable(createToJson: false)

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

  /// Get a [LatLng] object based on [lat] and [lon].
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

  /// @nodoc
  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}
