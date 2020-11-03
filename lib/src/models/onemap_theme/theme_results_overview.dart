import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/onemap_theme/onemap_theme.dart';

part 'theme_results_overview.g.dart';

@JsonSerializable()

/// Contains overview of theme from retrieve theme API. First item in the result
/// list.
class ThemeResultsOverview extends ThemeResult {
  @JsonKey(name: 'FeatCount')
  int featureCount;

  @JsonKey(name: 'Theme_Name')
  String themeName;

  @JsonKey(name: 'Category')
  String category;

  @JsonKey(name: 'Owner')
  String owner;

  @JsonKey(name: 'DateTime')
  OneMapDateTime dateTime;

  ThemeResultsOverview(this.featureCount, this.themeName, this.category,
      this.owner, this.dateTime);

  factory ThemeResultsOverview.fromJson(Map<String, dynamic> json) =>
      _$ThemeResultsOverviewFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeResultsOverviewToJson(this);
}
