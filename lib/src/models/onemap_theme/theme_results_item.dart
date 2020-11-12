import 'package:json_annotation/json_annotation.dart';
import 'package:latlong/latlong.dart';

import 'theme_result.dart';

part 'theme_results_item.g.dart';

/// Describe each individual item of a theme including geolocation information.
@JsonSerializable(createToJson: false)
class ThemeResultsItem extends ThemeResult {
  /// Name of the place.
  @JsonKey(name: 'NAME')
  String name;

  /// Description of the theme item.
  @JsonKey(name: 'DESCRIPTION')
  String description;

  /// Postal code of location.
  @JsonKey(name: 'ADDRESSPOSTALCODE')
  String postalCode;

  /// Address of location.
  @JsonKey(name: 'ADDRESSSTREETNAME')
  String address;

  /// A string containing the latitude and longitude of place.
  @JsonKey(name: 'LatLng')
  String latLongString;

  /// Icon name of theme data.
  /// Located at https://assets.onemap.sg/icons/{icon name}.{file extension}
  @JsonKey(name: 'ICON_NAME')
  String iconName;

  /// Provides the location as a [LatLng] object.
  LatLng get latLng {
    List<String> temp = latLongString.split(',');
    return LatLng(double.parse(temp[0]), double.parse(temp[1]));
  }

  ThemeResultsItem(this.name, this.description, this.postalCode, this.address,
      this.latLongString, this.iconName);

  /// @nodoc
  factory ThemeResultsItem.fromJson(Map<String, dynamic> json) =>
      _$ThemeResultsItemFromJson(json);
}
