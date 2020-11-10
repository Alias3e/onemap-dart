import 'package:json_annotation/json_annotation.dart';

import 'itinerary.dart';
import 'plan_vertex.dart';

part 'plan.g.dart';

@JsonSerializable(createToJson: false)

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

  /// @nodoc
  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
