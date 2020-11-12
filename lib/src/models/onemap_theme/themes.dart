import 'package:json_annotation/json_annotation.dart';

import 'onemap_theme.dart';

part 'themes.g.dart';

/// Contains a list [ThemeResult] after retrieving theme.
@JsonSerializable(explicitToJson: true, createToJson: false)
class Themes {
  /// List of result from theme search.
  @JsonKey(name: 'SrchResults', fromJson: _fromJson)
  List<ThemeResult> results;

  Themes(this.results);

  /// Custom method to deserialize JSON from API.
  static List<ThemeResult> _fromJson(List<dynamic> json) {
    List<ThemeResult> results = [];
    for (int i = 0; i < json.length; i++) {
      if (i == 0) {
        results.add(ThemeResultsOverview.fromJson(json[i]));
      } else {
        results.add(ThemeResultsItem.fromJson(json[i]));
      }
    }
    return results;
  }

  /// @nodoc
  factory Themes.fromJson(Map<String, dynamic> json) => _$ThemesFromJson(json);
}
