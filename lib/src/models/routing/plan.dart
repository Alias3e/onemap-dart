import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/routing/itinerary.dart';
import 'package:onemapsg/src/models/routing/plan_vertex.dart';

part 'plan.g.dart';

@JsonSerializable()

/// A [Plan] contains all routing information for a journey. Have a list of [Itinerary]
/// which details a possible route for the journey specified.
class Plan {
  @JsonKey(name: 'date')
  int dateTimestamp;

  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(dateTimestamp);

  PlanVertex from;

  PlanVertex to;

  List<Itinerary> itineraries;

  Plan(this.dateTimestamp, this.to, this.from, this.itineraries);

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  Map<String, dynamic> toJson() => _$PlanToJson(this);
}
