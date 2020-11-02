import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';
import 'package:onemapsg/src/models/routing/geometry_decoder.dart';
import 'package:onemapsg/src/models/routing/leg_geometry.dart';
import 'package:onemapsg/src/models/routing/routing.dart';
import 'package:onemapsg/src/models/routing/step.dart';
import 'package:onemapsg/src/models/routing/transit_vertex.dart';
import 'package:onemapsg/src/models/type_adapter.dart';

part 'leg.g.dart';

@JsonSerializable(explicitToJson: true)

/// A [Leg] is one segment of a route.
class Leg with GeometryDecoder {
  @JsonKey(name: 'startTime')
  int startTimestamp;

  @JsonKey(name: 'endTime')
  int endTimestamp;

  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimestamp);

  DateTime get endDateTime => DateTime.fromMillisecondsSinceEpoch(endTimestamp);

  int departureDelay;

  int arrivalDelay;

  bool realTime;

  double distance;

  bool pathway;

  String mode;

  String route;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String agencyName;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String agencyUrl;

  int agencyTimeZoneOffset;

  @JsonKey(
      fromJson: JsonTypeAdapter.zeroFromNull,
      toJson: JsonTypeAdapter.nullToZero)
  int routeType;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String routeId;

  bool interlineWithPreviousLeg;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String agencyId;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String tripId;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String serviceDate;

  TransitVertex from;

  TransitVertex to;

  @JsonKey(name: 'legGeometry')
  LegGeometry encodedLegGeometry;

  List<LatLng> get legGeometry => decode(
      isPublicTransport: mode != 'WALK',
      encodedString: encodedLegGeometry.points);

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String routeShortName;

  @JsonKey(
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String routeLongName;

  bool rentedBike;

  bool transitLeg;

  int duration;

  List<TransitVertex> intermediateStops;

  List<Step> steps;

  int numIntermediateStops;

  Leg(
      this.distance,
      this.mode,
      this.route,
      this.endTimestamp,
      this.startTimestamp,
      this.agencyId,
      this.agencyName,
      this.agencyTimeZoneOffset,
      this.agencyUrl,
      this.arrivalDelay,
      this.departureDelay,
      this.duration,
      this.from,
      this.interlineWithPreviousLeg,
      this.intermediateStops,
      this.encodedLegGeometry,
      this.numIntermediateStops,
      this.pathway,
      this.realTime,
      this.rentedBike,
      this.routeId,
      this.routeLongName,
      this.routeShortName,
      this.routeType,
      this.serviceDate,
      this.steps,
      this.to,
      this.transitLeg,
      this.tripId);

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);

  Map<String, dynamic> toJson() => _$LegToJson(this);
}
