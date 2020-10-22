import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/population_query/population_data.dart';

part 'household_monthly_income.g.dart';

@JsonSerializable()

/// Household month income retrieved from population query.
class HouseholdMonthlyIncome extends PopulationData {
  int total;

  @JsonKey(name: 'no_working_person')
  int noIncome;

  @JsonKey(name: 'below_sgd_1000')
  int below1000;

  @JsonKey(name: 'sgd_1000_to_1999')
  int between1000To1999;

  @JsonKey(name: 'sgd_2000_to_2999')
  int between2000To2999;

  @JsonKey(name: 'sgd_3000_to_3999')
  int between3000To3999;

  @JsonKey(name: 'sgd_4000_to_4999')
  int between4000To4999;

  @JsonKey(name: 'sgd_5000_to_5999')
  int between5000To5999;

  @JsonKey(name: 'sgd_6000_to_6999')
  int between6000To6999;

  @JsonKey(name: 'sgd_7000_to_7999')
  int between7000To7999;

  @JsonKey(name: 'sgd_8000_to_8999')
  int between8000To8999;

  @JsonKey(name: 'sgd_9000_to_9999')
  int between9000To9999;

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

  factory HouseholdMonthlyIncome.fromJson(Map<String, dynamic> json) =>
      _$HouseholdMonthlyIncomeFromJson(json);
  Map<String, dynamic> toJson() => _$HouseholdMonthlyIncomeToJson(this);
}
