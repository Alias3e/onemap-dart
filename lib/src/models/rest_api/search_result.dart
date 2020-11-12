import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

part 'search_result.g.dart';

/// [SearchResult] describe each individual location found from making search API call.
@JsonSerializable(createToJson: false)
class SearchResult {
  /// The value displayed when it this location shows up as a search result.
  @JsonKey(name: 'SEARCHVAL')
  String searchValue;

  /// The block number of this location.
  @JsonKey(name: 'BLK_NO')
  String blockNumber;

  /// The road name of this location.
  @JsonKey(name: 'ROAD_NAME')
  String roadName;

  /// The building name of this location
  @JsonKey(name: 'BUILDING')
  String building;

  /// The address of this location.
  @JsonKey(name: 'ADDRESS')
  String address;

  /// The postal code of this location.
  @JsonKey(name: 'POSTAL')
  String postal;

  /// X coordinate used in SVY21 format.
  @JsonKey(name: 'X', fromJson: JsonTypeAdapter.doubleFromString)
  double x;

  /// Y coordinate used in SVY21 format.
  @JsonKey(name: 'Y', fromJson: JsonTypeAdapter.doubleFromString)
  double y;

  /// Latitude used in WGS84 format.
  @JsonKey(name: 'LATITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double latitude;

  /// Longitude used in WGS84 format.
  @JsonKey(name: 'LONGITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double longitude;

  SearchResult({
    this.searchValue,
    this.blockNumber,
    this.roadName,
    this.building,
    this.address,
    this.postal,
    this.x,
    this.y,
    this.latitude,
    this.longitude,
  });

  /// @nodoc
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
