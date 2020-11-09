import 'package:json_annotation/json_annotation.dart';

import 'geocode_info.dart';

part 'reverse_geocode.g.dart';

@JsonSerializable(explicitToJson: true)

/// [ReverseGeocode] contains a list of [GeocodeInfo] found after performing reverse geocoding.
class ReverseGeocode {
  @JsonKey(name: 'GeocodeInfo')
  List<GeocodeInfo> geocodeInfos;

  ReverseGeocode(this.geocodeInfos);

  factory ReverseGeocode.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeFromJson(json);
  Map<String, dynamic> toJson() => _$ReverseGeocodeToJson(this);
}
