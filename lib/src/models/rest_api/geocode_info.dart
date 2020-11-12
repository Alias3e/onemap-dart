import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

/// Represent each individual location found after performing reverse geocoding.
part 'geocode_info.g.dart';

@JsonSerializable(createToJson: false)
class GeocodeInfo {
  /// Name of the building.
  @JsonKey(name: 'BUILDINGNAME', fromJson: JsonTypeAdapter.emptyFromNull)
  String buildingName;

  /// Name of feature.
  @JsonKey(name: 'FEATURE_NAME', fromJson: JsonTypeAdapter.emptyFromNull)
  String featureName;

  /// Block number.
  @JsonKey(name: 'BLOCK', fromJson: JsonTypeAdapter.emptyFromNull)
  String block;

  /// Road name.
  @JsonKey(name: 'ROAD', fromJson: JsonTypeAdapter.emptyFromNull)
  String road;

  /// Postal code.
  @JsonKey(name: 'POSTALCODE', fromJson: JsonTypeAdapter.emptyFromNull)
  String postalCode;

  /// X coordinate used in SVY21 format.
  @JsonKey(name: 'XCOORD', fromJson: JsonTypeAdapter.doubleFromString)
  double x;

  /// Y coordinate used in SVY21 format.
  @JsonKey(name: 'YCOORD', fromJson: JsonTypeAdapter.doubleFromString)
  double y;

  /// Latitude in WSG84 format.
  @JsonKey(name: 'LATITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double latitude;

  /// Longitude in WGS84 format.
  @JsonKey(name: 'LONGITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double longitude;

  GeocodeInfo(this.buildingName, this.featureName, this.road, this.block,
      this.postalCode, this.x, this.y, this.latitude, this.longitude);

  /// @nodoc
  factory GeocodeInfo.fromJson(Map<String, dynamic> json) =>
      _$GeocodeInfoFromJson(json);
}
