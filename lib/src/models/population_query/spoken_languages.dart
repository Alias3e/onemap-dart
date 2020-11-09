import 'package:json_annotation/json_annotation.dart';
import 'population_data.dart';

part 'spoken_languages.g.dart';

@JsonSerializable()

/// Details the languages spoken retrieved from population data.
class SpokenLanguages extends PopulationData {
  int english;

  int mandarin;

  @JsonKey(name: 'chinese_dialects')
  int chineseDialects;

  int malay;

  int tamil;

  @JsonKey(name: 'other_indian_languages')
  int otherIndianLanguages;

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

  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);
  Map<String, dynamic> toJson() => _$SpokenLanguagesToJson(this);
}
