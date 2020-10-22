// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_monthly_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseholdMonthlyIncome _$HouseholdMonthlyIncomeFromJson(
    Map<String, dynamic> json) {
  return HouseholdMonthlyIncome(
    json['below_sgd_1000'] as int,
    json['sgd_10000_over'] as int,
    json['sgd_1000_to_1999'] as int,
    json['sgd_2000_to_2999'] as int,
    json['sgd_3000_to_3999'] as int,
    json['sgd_4000_to_4999'] as int,
    json['sgd_5000_to_5999'] as int,
    json['sgd_6000_to_6999'] as int,
    json['sgd_7000_to_7999'] as int,
    json['sgd_8000_to_8999'] as int,
    json['sgd_9000_to_9999'] as int,
    json['no_working_person'] as int,
    json['total'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$HouseholdMonthlyIncomeToJson(
        HouseholdMonthlyIncome instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'total': instance.total,
      'no_working_person': instance.noIncome,
      'below_sgd_1000': instance.below1000,
      'sgd_1000_to_1999': instance.between1000To1999,
      'sgd_2000_to_2999': instance.between2000To2999,
      'sgd_3000_to_3999': instance.between3000To3999,
      'sgd_4000_to_4999': instance.between4000To4999,
      'sgd_5000_to_5999': instance.between5000To5999,
      'sgd_6000_to_6999': instance.between6000To6999,
      'sgd_7000_to_7999': instance.between7000To7999,
      'sgd_8000_to_8999': instance.between8000To8999,
      'sgd_9000_to_9999': instance.between9000To9999,
      'sgd_10000_over': instance.above10000,
    };
