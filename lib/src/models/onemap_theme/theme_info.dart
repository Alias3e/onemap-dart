import 'package:json_annotation/json_annotation.dart';

import 'theme_name.dart';

part 'theme_info.g.dart';

@JsonSerializable()

/// Contains a [themeNames] list.
class ThemeInfo {
  @JsonKey(name: 'Theme_Names')
  List<ThemeName> themeNames;

  ThemeInfo(this.themeNames);

  factory ThemeInfo.fromJson(Map<String, dynamic> json) =>
      _$ThemeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeInfoToJson(this);
}
