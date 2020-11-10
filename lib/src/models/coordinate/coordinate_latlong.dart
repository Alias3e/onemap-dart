import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

part 'coordinate_latlong.g.dart';

@JsonSerializable(createToJson: false)

/// Latitude, longitude coordinates in WSG84 format.
///
/// Helper method provides [LatLng] object which is commonly used in dart.
class CoordinateLatLong {
  double latitude;
  double longitude;

  CoordinateLatLong(this.latitude, this.longitude);

  /// @nodoc
  factory CoordinateLatLong.fromJson(Map<String, dynamic> json) =>
      _$CoordinateLatLongFromJson(json);

  /// Get [LatLng] object based on this object's [latitude] and [longitude]
  LatLng toLatLng() => LatLng(latitude, longitude);

  @override
  String toString() => '($latitude, $longitude)';
}
