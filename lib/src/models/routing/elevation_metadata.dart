import 'package:json_annotation/json_annotation.dart';

part 'elevation_metadata.g.dart';

/// Elevation data returned when calling route API with route type set to public transport.
@JsonSerializable(createToJson: false)
class ElevationMetadata {
  double ellipsoidToGeoidDifference;

  bool geoidElevation;

  ElevationMetadata(this.ellipsoidToGeoidDifference, this.geoidElevation);

  /// @nodoc
  factory ElevationMetadata.fromJson(Map<String, dynamic> json) =>
      _$ElevationMetadataFromJson(json);
}
