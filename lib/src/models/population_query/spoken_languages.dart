import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'spoken_languages.g.dart';

/// Details the languages spoken retrieved from population data.
@JsonSerializable(createToJson: false)
class SpokenLanguages extends PopulationData {
  /// Number of peole who can speak english.
  int english;

  /// Number of people who can speak mandarin.
  int mandarin;

  /// Number of people who can speak chinese dialect.
  @JsonKey(name: 'chinese_dialects')
  int chineseDialects;

  /// Number of people who can speak malay.
  int malay;

  /// Number of people who can speak tamil.
  int tamil;

  /// Number of people who can speak other indian languages.
  @JsonKey(name: 'other_indian_languages')
  int otherIndianLanguages;

  /// Number of people who can speak other languages.
  int others;

  SpokenLanguages(
      this.english,
      this.mandarin,
      this.chineseDialects,
      this.malay,
      this.tamil,
      this.otherIndianLanguages,
      this.others,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);
}
