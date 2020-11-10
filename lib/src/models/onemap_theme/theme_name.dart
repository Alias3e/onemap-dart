import 'package:json_annotation/json_annotation.dart';

part 'theme_name.g.dart';

@JsonSerializable(createToJson: false)

/// Contains [themeName] and [queryName] about a theme. Could contain additional
/// information about the theme if requested.
class ThemeName {
  @JsonKey(name: 'THEMENAME')
  String themeName;

  @JsonKey(name: 'QUERYNAME')
  String queryName;

  @JsonKey(name: 'ICON')
  String icon;

  @JsonKey(name: 'CATEGORY')
  String category;

  @JsonKey(name: 'THEME_OWNER')
  String themeOwner;
  ThemeName(this.themeName, this.queryName, this.icon, this.category,
      this.themeOwner);

  /// @nodoc
  factory ThemeName.fromJson(Map<String, dynamic> json) =>
      _$ThemeNameFromJson(json);
}
