import 'package:json_annotation/json_annotation.dart';

import 'onemap_theme.dart';

part 'themes.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)

/// Contains a list [ThemeResult] after retrieving theme.
class Themes {
  @JsonKey(name: 'SrchResults', fromJson: _fromJson)
  List<ThemeResult> results;

  Themes(this.results);

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
