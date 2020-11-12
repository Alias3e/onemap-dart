import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'language_literacy.g.dart';

/// Language literacy data retrieved from population query.
@JsonSerializable(createToJson: false)
class LanguageLiteracy extends PopulationData {
  /// Number of people who are illiterate.
  @JsonKey(name: 'no_literate')
  int illiterate;

  /// Number of people who are chinese literate.
  @JsonKey(name: 'l1_chi')
  int chineseOnly;

  /// Number of people who are english literate.
  @JsonKey(name: 'l1_eng')
  int englishOnly;

  /// Number of people who are malay literate.
  @JsonKey(name: 'l1_mal')
  int malayOnly;

  /// Number of people who are tamil literate.
  @JsonKey(name: 'l1_tam')
  int tamilOnly;

  /// Number of people who are literate in 1 non-official language.
  @JsonKey(name: 'l1_non_off')
  int unofficialLanguageOnly;

  /// Number of people who are english and chinese literate.
  @JsonKey(name: 'l2_eng_chi')
  int englishAndChinese;

  /// Number of people who are english and malay literate.
  @JsonKey(name: 'l2_eng_mal')
  int englishAndMalay;

  /// Number of people who are english and tamil literate.
  @JsonKey(name: 'l2_eng_tam')
  int englishAndTamil;

  /// Number of people who are literate in english and another non-offical language.
  @JsonKey(name: 'l2_eng_non_off')
  int englishAndUnofficialLanguage;

  /// Number of people who are literate in any other 2 languages.
  @JsonKey(name: 'l2_other_two')
  int anyOtherTwoLanguages;

  /// Number of people who are english, chinese and malay literate.
  @JsonKey(name: 'l3_eng_chi_mal')
  int englishChineseAndMalay;

  /// Number of people who are english, malay and tamil literate.
  @JsonKey(name: 'l3_eng_mal_tam')
  int englishMalayAndTamil;

  /// Number of people who are literate in any other 3 languages.
  @JsonKey(name: 'l3_other_three')
  int anyOtherThreeLanguages;

  LanguageLiteracy(
      this.illiterate,
      this.englishOnly,
      this.chineseOnly,
      this.malayOnly,
      this.tamilOnly,
      this.unofficialLanguageOnly,
      this.englishAndChinese,
      this.englishAndMalay,
      this.englishAndTamil,
      this.englishAndUnofficialLanguage,
      this.anyOtherTwoLanguages,
      this.englishChineseAndMalay,
      this.englishMalayAndTamil,
      this.anyOtherThreeLanguages,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory LanguageLiteracy.fromJson(Map<String, dynamic> json) =>
      _$LanguageLiteracyFromJson(json);
}
