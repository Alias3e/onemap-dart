import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'income_from_work.g.dart';

@JsonSerializable(createToJson: false)

/// Income information retrieved from population query.
class IncomeFromWork extends PopulationData {
  @JsonKey(name: 'below_sgd_1000')
  int below1000;

  @JsonKey(name: 'sgd_1000_to_1499')
  int between1000To1499;

  @JsonKey(name: 'sgd_1500_to_1999')
  int between1500To1999;

  @JsonKey(name: 'sgd_2000_to_2499')
  int between2000To2499;

  @JsonKey(name: 'sgd_2500_to_2999')
  int between2500To2999;

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

  @JsonKey(name: 'sgd_8000_over')
  int over8000;

  IncomeFromWork(
      this.below1000,
      this.between1000To1499,
      this.between1500To1999,
      this.between2000To2499,
      this.between2500To2999,
      this.between3000To3999,
      this.between4000To4999,
      this.between5000To5999,
      this.between6000To6999,
      this.between7000To7999,
      this.over8000,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory IncomeFromWork.fromJson(Map<String, dynamic> json) =>
      _$IncomeFromWorkFromJson(json);
}
