import 'package:json_annotation/json_annotation.dart';

import 'itinerary.dart';
import 'plan_vertex.dart';

part 'plan.g.dart';

/// A [Plan] contains all routing information for a journey. Have a list of [Itinerary]
/// which details a possible route for the journey specified.
@JsonSerializable(createToJson: false)
class Plan {
  /// Date for which this plan was created for.
  @JsonKey(name: 'date')
  int dateTimestamp;

  /// Returns [DateTime] object which parse the date information in [dateTimestamp]
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(dateTimestamp);

  /// Starting point of plan.
  PlanVertex from;

  /// End destination of plan.
  PlanVertex to;

  /// List of different routes in which the user can get from start point to
  /// destination.
  List<Itinerary> itineraries;

  Plan(this.dateTimestamp, this.to, this.from, this.itineraries);

  /// @nodoc
  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
