import 'package:json_annotation/json_annotation.dart';

import 'onemap_theme.dart';

part 'theme_results_overview.g.dart';

@JsonSerializable(createToJson: false)

/// Contains overview of theme from retrieve theme API. First item in the result
/// list.
class ThemeResultsOverview extends ThemeResult {
  @JsonKey(name: 'FeatCount')

  /// Number of results.
  int featureCount;

  @JsonKey(name: 'Theme_Name')

  /// Name of theme.
  String themeName;

  @JsonKey(name: 'Category')

  /// Category of theme
  String category;

  @JsonKey(name: 'Owner')

  /// The organization which provided this theme information.
  String owner;

  @JsonKey(name: 'DateTime')
  OneMapDateTime dateTime;

  ThemeResultsOverview(this.featureCount, this.themeName, this.category,
      this.owner, this.dateTime);

  /// @nodoc
  factory ThemeResultsOverview.fromJson(Map<String, dynamic> json) =>
      _$ThemeResultsOverviewFromJson(json);
}
