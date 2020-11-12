import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'age.g.dart';

/// Age distribution retrieved from population query.
@JsonSerializable(createToJson: false)
class Age extends GenderData {
  /// Number of person ages 0 to 4;
  @JsonKey(name: 'age_0_4')
  int ages0To4;

  /// Number of person ages 5 to 9;
  @JsonKey(name: 'age_5_9')
  int ages5To9;

  /// Number of person ages 10 to 44;
  @JsonKey(name: 'age_10_14')
  int ages10To14;

  /// Number of person ages 15 to 19;
  @JsonKey(name: 'age_15_19')
  int ages15To19;

  /// Number of person ages 20 to 24;
  @JsonKey(name: 'age_20_24')
  int ages20To24;

  /// Number of person ages 25 to 29;
  @JsonKey(name: 'age_25_29')
  int ages25To29;

  /// Number of person ages 30 to 34;
  @JsonKey(name: 'age_30_34')
  int ages30To34;

  /// Number of person ages 35 to 39;
  @JsonKey(name: 'age_35_39')
  int ages35To39;

  /// Number of person ages 40 to 44;
  @JsonKey(name: 'age_40_44')
  int ages40To44;

  /// Number of person ages 45 to 49;
  @JsonKey(name: 'age_45_49')
  int ages45To49;

  /// Number of person ages 50 to 54;
  @JsonKey(name: 'age_50_54')
  int ages50To54;

  /// Number of person ages 55 to 59;
  @JsonKey(name: 'age_55_59')
  int ages55To59;

  /// Number of person ages 60 to 64;
  @JsonKey(name: 'age_60_64')
  int ages60To64;

  /// Number of person ages 65 to 69;
  @JsonKey(name: 'age_65_69')
  int ages65To69;

  /// Number of person ages 70 to 74;
  @JsonKey(name: 'age_70_74')
  int ages70To74;

  /// Number of person ages 75 to 79;
  @JsonKey(name: 'age_75_79')
  int ages75To79;

  /// Number of person ages 80 to 84;
  @JsonKey(name: 'age_80_84')
  int ages80To84;

  /// Number of person ages 85 and over;
  @JsonKey(name: 'age_85_over')
  int ages85AndOver;

  /// Total number of people included in this data.
  int total;

  Age(
      this.ages0To4,
      this.ages5To9,
      this.ages10To14,
      this.ages15To19,
      this.ages20To24,
      this.ages25To29,
      this.ages30To34,
      this.ages35To39,
      this.ages40To44,
      this.ages45To49,
      this.ages50To54,
      this.ages55To59,
      this.ages60To64,
      this.ages65To69,
      this.ages70To74,
      this.ages75To79,
      this.ages80To84,
      this.ages85AndOver,
      this.total,
      String gender,
      String planningArea,
      int year)
      : super(gender, planningArea, year);

  /// @nodoc
  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
}
