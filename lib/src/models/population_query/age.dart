import 'package:json_annotation/json_annotation.dart';

import 'gender_data.dart';

part 'age.g.dart';

@JsonSerializable(createToJson: false)

/// Age distribution retrieved from population query.
class Age extends GenderData {
  @JsonKey(name: 'age_0_4')
  int ages0To4;

  @JsonKey(name: 'age_5_9')
  int ages5To9;

  @JsonKey(name: 'age_10_14')
  int ages10To14;

  @JsonKey(name: 'age_15_19')
  int ages15To19;

  @JsonKey(name: 'age_20_24')
  int ages20To24;

  @JsonKey(name: 'age_25_29')
  int ages25To29;

  @JsonKey(name: 'age_30_34')
  int ages30To34;

  @JsonKey(name: 'age_35_39')
  int ages35To39;

  @JsonKey(name: 'age_40_44')
  int ages40To44;

  @JsonKey(name: 'age_45_49')
  int ages45To49;

  @JsonKey(name: 'age_50_54')
  int ages50To54;

  @JsonKey(name: 'age_55_59')
  int ages55To59;

  @JsonKey(name: 'age_60_64')
  int ages60To64;

  @JsonKey(name: 'age_65_69')
  int ages65To69;

  @JsonKey(name: 'age_70_74')
  int ages70To74;

  @JsonKey(name: 'age_75_79')
  int ages75To79;

  @JsonKey(name: 'age_80_84')
  int ages80To84;

  @JsonKey(name: 'age_85_over')
  int ages85AndOver;

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
