import 'package:json_annotation/json_annotation.dart';

import 'leg.dart';

part 'itinerary.g.dart';

@JsonSerializable()

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

  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimeStamp);

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

  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);

  Map<String, dynamic> toJson() => _$ItineraryToJson(this);
}
