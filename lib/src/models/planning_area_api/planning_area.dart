import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import '../../apis/population_query.dart';
import '../type_adapter.dart';

part 'planning_area.g.dart';

/// Describes planning area with [planningAreaName] and geolocation data in [String] format([geoJsonString])
/// or [Map] format([geoJson]).
@JsonSerializable(explicitToJson: true, createToJson: false)
class PlanningArea {
  /// Name of planning area. Use in [PopulationQuery] APIs to define the
  /// planning area for which to retrieve data for.
  @JsonKey(name: 'pln_area_n')
  String planningAreaName;

  /// GeoJson string that defines the geometry of the planning area.
  @JsonKey(name: 'geojson', fromJson: JsonTypeAdapter.emptyFromNull)
  String geoJsonString;

  /// Returns [geoJson] as a [Map]. If there are decoding errors, please
  /// use another specialized GeoJSON library to deserialize [geoJsonString].
  Map<String, dynamic> get geoJson {
    try {
      return json.decode(geoJsonString);
    } on FormatException catch (_) {
      // We need to handle format exception for the JSON string because
      // getAllPlanningAreas and getPlanningArea API returns JSON in different
      // format. getPlanningArea API does not escape the GeoJSON string, so we
      // manually escape the String so it can be decoded into a Map.
      return json.decode(geoJsonString
          .replaceFirst('type', '\"type\"')
          .replaceFirst('coordinates', '\"coordinates\"')
          .replaceFirst('MultiPolygon', '\"MultiPolygon\"'));
    } on Error catch (_) {
      return {};
    }
  }

  PlanningArea(this.planningAreaName, this.geoJsonString);

  /// @nodoc
  factory PlanningArea.fromJson(Map<String, dynamic> json) =>
      _$PlanningAreaFromJson(json);
}
