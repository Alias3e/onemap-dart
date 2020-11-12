import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import '../type_adapter.dart';
import 'routing.dart';

part 'leg.g.dart';

/// A [Leg] is one segment of a route.
@JsonSerializable(explicitToJson: true, createToJson: false)
class Leg with GeometryDecoder {
  /// Start timestamp in milliseconds for this leg of the route.
  @JsonKey(name: 'startTime')
  int startTimestamp;

  /// End timestamp in milliseconds for this leg of the route.
  @JsonKey(name: 'endTime')
  int endTimestamp;

  /// Get [DateTime] object based on [startTimestamp].
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimestamp);

  /// Get [DateTime] object based on [endTimestamp].
  DateTime get endDateTime => DateTime.fromMillisecondsSinceEpoch(endTimestamp);

  /// Delay in departure.
  int departureDelay;

  /// Delay in arrival.
  int arrivalDelay;

  bool realTime;

  /// Distance for this leg.
  double distance;

  bool pathway;

  /// The type of leg, could be WALK, BUS, SUBWAY
  String mode;

  /// Name of the route, could be bus number or MRT line(NS, EW). Empty if mode is WALK.
  String route;

  /// The transit provider(SMRT, SBS etc). Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyName;

  /// Website of the transit provider. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyUrl;

  int agencyTimeZoneOffset;

  @JsonKey(fromJson: JsonTypeAdapter.zeroFromNull)
  int routeType;

  /// An identifier for the route. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String routeId;

  bool interlineWithPreviousLeg;

  /// An identifier for the transit provider. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String agencyId;

  /// Identifier for the transit trip. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String tripId;

  /// The date of the transit service. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String serviceDate;

  /// Start point of the leg.
  TransitVertex from;

  /// End point of the leg.
  TransitVertex to;

  /// Geometry string that can be decoded into latitude and longitude points.
  @JsonKey(name: 'legGeometry')
  LegGeometry encodedLegGeometry;

  /// Decoded geometry for this lag. For more information, refer to [GeometryDecoder]
  /// class.
  List<LatLng> get legGeometry => decode(
      isPublicTransport: mode != 'WALK',
      encodedString: encodedLegGeometry.points);

  /// Short name for route. Empty if mode is WALK.
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String routeShortName;

  /// Long name for route. Empty if mode is WALK
  @JsonKey(fromJson: JsonTypeAdapter.emptyFromNull)
  String routeLongName;

  bool rentedBike;

  /// Indicates if this leg of the journey is on transit, or is it a walking leg.
  bool transitLeg;

  /// Duration in seconds for this leg of the journey.
  int duration;

  /// List of intermediate bus stops between start and end point.
  List<TransitVertex> intermediateStops;

  /// List of [Step] for this leg.
  List<Step> steps;

  /// The number of intermediate stops.
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
