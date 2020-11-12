import 'package:json_annotation/json_annotation.dart';

import 'geocode_info.dart';

part 'reverse_geocode.g.dart';

/// [ReverseGeocode] contains a list of [GeocodeInfo] found after performing reverse geocoding.
@JsonSerializable(explicitToJson: true, createToJson: false)
class ReverseGeocode {
  /// List of [GeocodeInfo] result from performing reverse geocoding.
  @JsonKey(name: 'GeocodeInfo')
  List<GeocodeInfo> geocodeInfos;

  ReverseGeocode(this.geocodeInfos);

  /// @nodoc
  factory ReverseGeocode.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeFromJson(json);
}
