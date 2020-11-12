import 'package:json_annotation/json_annotation.dart';

/// @nodoc
/// Base class for data retrieved from population query API.
abstract class PopulationData {
  /// The planning area that the data belongs to.
  @JsonKey(name: 'planning_area')
  String planningArea;

  /// The year that the data was collected.
  int year;

  PopulationData(this.planningArea, this.year);
}
