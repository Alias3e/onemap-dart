import 'package:json_annotation/json_annotation.dart';

part 'theme_name.g.dart';

/// Contains [themeName] and [queryName] about a theme. Could contain additional
/// information about the theme if requested.
@JsonSerializable(createToJson: false)
class ThemeName {
  /// Name of the theme.
  @JsonKey(name: 'THEMENAME')
  String themeName;

  /// Query used in theme info search.
  @JsonKey(name: 'QUERYNAME')
  String queryName;

  /// Icon representing the theme provided by OneMap.
  /// Located at https://assets.onemap.sg/icons/{icon name}.{file extension}
  @JsonKey(name: 'ICON')
  String icon;

  /// Category the theme belongs to.
  @JsonKey(name: 'CATEGORY')
  String category;

  /// The organization which provided this theme data.
  @JsonKey(name: 'THEME_OWNER')
  String themeOwner;
  ThemeName(this.themeName, this.queryName, this.icon, this.category,
      this.themeOwner);

  /// @nodoc
  factory ThemeName.fromJson(Map<String, dynamic> json) =>
      _$ThemeNameFromJson(json);
}
