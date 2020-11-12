import 'package:json_annotation/json_annotation.dart';

import 'leg.dart';

part 'itinerary.g.dart';

/// Represents a set of data detailing a possible route.
@JsonSerializable(createToJson: false)
class Itinerary {
  /// Time needed to complete in seconds
  int duration;

  /// Start timestamp in millseconds
  @JsonKey(name: 'startTime')
  int startTimeStamp;

  /// End timestamp in millseconds.
  @JsonKey(name: 'endTime')
  int endTimeStamp;

  /// Walking time in seconds.
  int walkTime;

  /// Transit time in seconds.
  int transitTime;

  /// Waiting time in seconds.
  int waitingTime;

  /// Distance walked in metres.
  double walkDistance;

  /// If walking distance exceed limit set by user.
  bool walkLimitExceeded;

  /// Elevation lost in route.
  num elevationLost;

  /// Elevation gained in route.
  num elevationGained;

  /// The number of transfer in the route.
  int transfers;

  /// List of [Leg] which details each part of this itinerary.
  List<Leg> legs;

  bool tooSloped;

  /// Total fare for this route.
  String fare;

  /// Get [DateTime] object based on the [startTimeStamp].
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimeStamp);

  /// Get [DateTime] object based on the [endTimeStamp].
  DateTime get endDateTime => DateTime.fromMillisecondsSinceEpoch(endTimeStamp);

  Itinerary(
    this.duration,
    this.elevationGained,
    this.elevationLost,
    this.endTimeStamp,
    this.fare,
    this.legs,
    this.startTimeStamp,
    this.tooSloped,
    this.transfers,
    this.transitTime,
    this.waitingTime,
    this.walkDistance,
    this.walkLimitExceeded,
    this.walkTime,
  );

  /// @nodoc
  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);
}
