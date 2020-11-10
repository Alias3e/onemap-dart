import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import '../type_adapter.dart';
import 'routing.dart';

part 'leg.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)

/// A [Leg] is one segment of a route.
class Leg with GeometryDecoder {
  @JsonKey(name: 'startTime')
  int startTimestamp;

  @JsonKey(name: 'endTime')
  int endTimestamp;

  /// Get [DateTime] object based on [startTimestamp].
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimestamp);

  /// Get [DateTime] object based on [endTimestamp].
  DateTime get endDateTime => DateTime.fromMillisecondsSinceEpoch(endTimestamp);

  int departureDelay;

  int arrivalDelay;

  bool realTime;

  double distance;

  bool pathway;

  String mode;

  String route;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyName;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyUrl;

  int agencyTimeZoneOffset;

  @JsonKey(fromJson: JsonTypeAdapter.zeroFromNull)
  int routeType;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String routeId;

  bool interlineWithPreviousLeg;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyId;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String tripId;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String serviceDate;

  TransitVertex from;

  TransitVertex to;

  @JsonKey(name: 'legGeometry')
  LegGeometry encodedLegGeometry;

  /// Decoded geometry for this lag. For more information, refer to [GeometryDecoder]
  /// class.
  List<LatLng> get legGeometry => decode(
      isPublicTransport: mode != 'WALK',
      encodedString: encodedLegGeometry.points);

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String routeShortName;

  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
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

  /// @nodoc
  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}
