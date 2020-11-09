import 'package:json_annotation/json_annotation.dart';

import 'onemap_theme.dart';

part 'themes.g.dart';

@JsonSerializable(explicitToJson: true)

/// Contains a list [ThemeResult] after retrieving theme.
class Themes {
  @JsonKey(name: 'SrchResults', fromJson: _fromJson, toJson: _toJson)
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

  static List<dynamic> _toJson(List<ThemeResult> results) {
    List<dynamic> output = [];
    for (int i = 0; i < results.length; i++) {
      if (i == 0)
        output.add((results[i] as ThemeResultsOverview).toJson());
      else
        output.add((results[i] as ThemeResultsItem).toJson());
    }
    return output;
  }

  factory Themes.fromJson(Map<String, dynamic> json) => _$ThemesFromJson(json);
  Map<String, dynamic> toJson() => _$ThemesToJson(this);
}
