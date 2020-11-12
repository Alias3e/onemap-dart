import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_monthly_income.g.dart';

/// Household month income retrieved from population query.
@JsonSerializable(createToJson: false)
class HouseholdMonthlyIncome extends PopulationData {
  /// Total number of households included in this data.
  int total;

  /// Number of households with no income.
  @JsonKey(name: 'no_working_person')
  int noIncome;

  /// Number of households with income less than $1000.
  @JsonKey(name: 'below_sgd_1000')
  int below1000;

  /// Number of households with income between $1000 and $1999.
  @JsonKey(name: 'sgd_1000_to_1999')
  int between1000To1999;

  /// Number of households with income between $2000 and $2999.
  @JsonKey(name: 'sgd_2000_to_2999')
  int between2000To2999;

  /// Number of households with income between $3000 and $3999.
  @JsonKey(name: 'sgd_3000_to_3999')
  int between3000To3999;

  /// Number of households with income between $4000 and $4999.
  @JsonKey(name: 'sgd_4000_to_4999')
  int between4000To4999;

  /// Number of households with income between $5000 and $5999.
  @JsonKey(name: 'sgd_5000_to_5999')
  int between5000To5999;

  /// Number of households with income between $6000 and $6999.
  @JsonKey(name: 'sgd_6000_to_6999')
  int between6000To6999;

  /// Number of households with income between $7000 and $7999.
  @JsonKey(name: 'sgd_7000_to_7999')
  int between7000To7999;

  /// Number of households with income between $8000 and $8999.
  @JsonKey(name: 'sgd_8000_to_8999')
  int between8000To8999;

  /// Number of households with income between $9000 and $9999.
  @JsonKey(name: 'sgd_9000_to_9999')
  int between9000To9999;

  /// Number of households with income $10000 and above.
  @JsonKey(name: 'sgd_10000_over')
  int above10000;

  HouseholdMonthlyIncome(
      this.below1000,
      this.above10000,
      this.between1000To1999,
      this.between2000To2999,
      this.between3000To3999,
      this.between4000To4999,
      this.between5000To5999,
      this.between6000To6999,
      this.between7000To7999,
      this.between8000To8999,
      this.between9000To9999,
      this.noIncome,
      this.total,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory HouseholdMonthlyIncome.fromJson(Map<String, dynamic> json) =>
      _$HouseholdMonthlyIncomeFromJson(json);
}
