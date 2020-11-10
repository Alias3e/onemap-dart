import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

part 'search_result.g.dart';

@JsonSerializable(createToJson: false)

/// [SearchResult] describe each individual location found from making search API call.
class SearchResult {
  @JsonKey(name: 'SEARCHVAL')
  String searchValue;

  @JsonKey(name: 'BLK_NO')
  String blockNumber;

  @JsonKey(name: 'ROAD_NAME')
  String roadName;

  @JsonKey(name: 'BUILDING')
  String building;

  @JsonKey(name: 'ADDRESS')
  String address;

  @JsonKey(name: 'POSTAL')
  String postal;

  @JsonKey(name: 'X', fromJson: JsonTypeAdapter.doubleFromString)
  double x;

  @JsonKey(name: 'Y', fromJson: JsonTypeAdapter.doubleFromString)
  double y;

  @JsonKey(name: 'LATITUDE', fromJson: JsonTypeAdapter.doubleFromString)
  double latitude;

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
