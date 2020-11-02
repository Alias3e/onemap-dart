import 'package:json_annotation/json_annotation.dart';

part 'elevation_metadata.g.dart';

@JsonSerializable()

/// Elevation data returned when calling route API with route type set to public transport.
class ElevationMetadata {
  double ellipsoidToGeoidDifference;

  bool geoidElevation;

  ElevationMetadata(this.ellipsoidToGeoidDifference, this.geoidElevation);

  factory ElevationMetadata.fromJson(Map<String, dynamic> json) =>
      _$ElevationMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$ElevationMetadataToJson(this);
}
