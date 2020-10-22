import 'package:json_annotation/json_annotation.dart';

/// Base class for data retrieved from population query API.
abstract class PopulationData {
  @JsonKey(name: 'planning_area')
  String planningArea;

  int year;

  PopulationData(this.planningArea, this.year);
}
