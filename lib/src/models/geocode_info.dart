import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/type_adapter.dart';

part 'geocode_info.g.dart';

@JsonSerializable()

/// Represent each individual location found after performing reverse geocoding.
class GeocodeInfo {
  @JsonKey(
      name: 'BUILDINGNAME',
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String buildingName;

  @JsonKey(
      name: 'FEATURE_NAME',
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String featureName;

  @JsonKey(
      name: 'BLOCK',
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String block;

  @JsonKey(
      name: 'ROAD',
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String road;

  @JsonKey(
      name: 'POSTALCODE',
      fromJson: JsonTypeAdapter.emptyFromNull,
      toJson: JsonTypeAdapter.emptyToNull)
  String postalCode;

  @JsonKey(
      name: 'XCOORD',
      fromJson: JsonTypeAdapter.doubleFromString,
      toJson: JsonTypeAdapter.doubleToString)
  double x;

  @JsonKey(
      name: 'YCOORD',
      fromJson: JsonTypeAdapter.doubleFromString,
      toJson: JsonTypeAdapter.doubleToString)
  double y;

  @JsonKey(
      name: 'LATITUDE',
      fromJson: JsonTypeAdapter.doubleFromString,
      toJson: JsonTypeAdapter.doubleToString)
  double latitude;

  @JsonKey(
      name: 'LONGITUDE',
      fromJson: JsonTypeAdapter.doubleFromString,
      toJson: JsonTypeAdapter.doubleToString)
  double longitude;

  GeocodeInfo(this.buildingName, this.featureName, this.road, this.block,
      this.postalCode, this.x, this.y, this.latitude, this.longitude);

  factory GeocodeInfo.fromJson(Map<String, dynamic> json) =>
      _$GeocodeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$GeocodeInfoToJson(this);
}
