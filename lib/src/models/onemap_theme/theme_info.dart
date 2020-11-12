import 'package:json_annotation/json_annotation.dart';

import 'theme_name.dart';

part 'theme_info.g.dart';

/// Contains a [themeNames] list.
@JsonSerializable(createToJson: false)
class ThemeInfo {
  /// List of [ThemeName].
  @JsonKey(name: 'Theme_Names')
  List<ThemeName> themeNames;

  ThemeInfo(this.themeNames);

  /// @nodoc
  factory ThemeInfo.fromJson(Map<String, dynamic> json) =>
      _$ThemeInfoFromJson(json);
}
