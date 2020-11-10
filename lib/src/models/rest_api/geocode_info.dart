import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

part 'geocode_info.g.dart';

@JsonSerializable(createToJson: false)

/// Represent each individual location found after performing reverse geocoding.
class GeocodeInfo {
  @JsonKey(name: 'BUILDINGNAME', fromJson: JsonTypeAdapter.emptyFromNull)
  String buildingName;

  @JsonKey(name: 'FEATURE_NAME', fromJson: JsonTypeAdapter.emptyFromNull)
  String featureName;

  @JsonKey(name: 'BLOCK', fromJson: JsonTypeAdapter.emptyFromNull)
  String block;

  @JsonKey(name: 'ROAD', fromJson: JsonTypeAdapter.emptyFromNull)
  String road;

  @JsonKey(name: 'POSTALCODE', fromJson: JsonTypeAdapter.emptyFromNull)
  String postalCode;

  @JsonKey(name: 'XCOORD', fromJson: JsonTypeAdapter.doubleFromString)
  double x;

  @JsonKey(name: 'YCOORD', fromJson: JsonTypeAdapter.doubleFromString)
  double y;

  @JsonKey(name: 'LATITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double latitude;

  @JsonKey(name: 'LONGITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double longitude;

  GeocodeInfo(this.buildingName, this.featureName, this.road, this.block,
      this.postalCode, this.x, this.y, this.latitude, this.longitude);

  /// @nodoc
  factory GeocodeInfo.fromJson(Map<String, dynamic> json) =>
      _$GeocodeInfoFromJson(json);
}
