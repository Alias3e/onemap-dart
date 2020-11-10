import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'language_literacy.g.dart';

@JsonSerializable(createToJson: false)

/// Language literacy data retrieved from population query.
class LanguageLiteracy extends PopulationData {
  @JsonKey(name: 'no_literate')
  int illiterate;

  @JsonKey(name: 'l1_chi')
  int chineseOnly;

  @JsonKey(name: 'l1_eng')
  int englishOnly;

  @JsonKey(name: 'l1_mal')
  int malayOnly;

  @JsonKey(name: 'l1_tam')
  int tamilOnly;

  @JsonKey(name: 'l1_non_off')
  int unofficialLanguageOnly;

  @JsonKey(name: 'l2_eng_chi')
  int englishAndChinese;

  @JsonKey(name: 'l2_eng_mal')
  int englishAndMalay;

  @JsonKey(name: 'l2_eng_tam')
  int englishAndTamil;

  @JsonKey(name: 'l2_eng_non_off')
  int englishAndUnofficialLanguage;

  @JsonKey(name: 'l2_other_two')
  int anyOtherTwoLanguages;

  @JsonKey(name: 'l3_eng_chi_mal')
  int englishChineseAndMalay;

  @JsonKey(name: 'l3_eng_mal_tam')
  int englishMalayAndTamil;

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
