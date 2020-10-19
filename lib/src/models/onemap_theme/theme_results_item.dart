import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';
import 'package:onemapsg/src/models/onemap_theme/theme_result.dart';

part 'theme_results_item.g.dart';

@JsonSerializable()

/// Describe each individual item of a theme including geolocation information.
class ThemeResultsItem extends ThemeResult {
  @JsonKey(name: 'NAME')
  String name;

  @JsonKey(name: 'DESCRIPTION')
  String description;

  @JsonKey(name: 'ADDRESSPOSTALCODE')
  String postalCode;

  @JsonKey(name: 'ADDRESSSTREETNAME')
  String address;

  @JsonKey(name: 'LatLng')
  String latLongString;

  @JsonKey(name: 'ICON_NAME')
  String iconName;

  LatLng get latLng {
    List<String> temp = latLongString.split(',');
    return LatLng(double.parse(temp[0]), double.parse(temp[1]));
  }

  ThemeResultsItem(this.name, this.description, this.postalCode, this.address,
      this.latLongString, this.iconName);

  factory ThemeResultsItem.fromJson(Map<String, dynamic> json) =>
      _$ThemeResultsItemFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeResultsItemToJson(this);
}
