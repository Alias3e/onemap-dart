import 'package:json_annotation/json_annotation.dart';

import 'leg.dart';

part 'itinerary.g.dart';

@JsonSerializable(createToJson: false)

/// Represents a set of data detailing a possible route.
class Itinerary {
  int duration;

  @JsonKey(name: 'startTime')
  int startTimeStamp;

  @JsonKey(name: 'endTime')
  int endTimeStamp;

  int walkTime;

  int transitTime;

  int waitingTime;

  double walkDistance;

  bool walkLimitExceeded;

  num elevationLost;

  num elevationGained;

  int transfers;

  List<Leg> legs;

  bool tooSloped;

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
