import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'income_from_work.g.dart';

/// Income information retrieved from population query.
@JsonSerializable(createToJson: false)
class IncomeFromWork extends PopulationData {
  /// Income below $1000.
  @JsonKey(name: 'below_sgd_1000')
  int below1000;

  /// Income between $1000 and $1499.
  @JsonKey(name: 'sgd_1000_to_1499')
  int between1000To1499;

  /// Income between $1500 and $1999.
  @JsonKey(name: 'sgd_1500_to_1999')
  int between1500To1999;

  /// Income between $2000 and $2499.
  @JsonKey(name: 'sgd_2000_to_2499')
  int between2000To2499;

  /// Income between $2500 and $2999.
  @JsonKey(name: 'sgd_2500_to_2999')
  int between2500To2999;

  /// Income between $3000 and $3999.
  @JsonKey(name: 'sgd_3000_to_3999')
  int between3000To3999;

  /// Income between $4000 and $4999.
  @JsonKey(name: 'sgd_4000_to_4999')
  int between4000To4999;

  /// Income between $5000 and $5999.
  @JsonKey(name: 'sgd_5000_to_5999')
  int between5000To5999;

  /// Income between $6000 and $6999.
  @JsonKey(name: 'sgd_6000_to_6999')
  int between6000To6999;

  /// Income between $7000 and $7999.
  @JsonKey(name: 'sgd_7000_to_7999')
  int between7000To7999;

  /// Income $8000 and above.
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
