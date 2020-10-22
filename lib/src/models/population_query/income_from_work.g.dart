// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_from_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeFromWork _$IncomeFromWorkFromJson(Map<String, dynamic> json) {
  return IncomeFromWork(
    json['below_sgd_1000'] as int,
    json['sgd_1000_to_1499'] as int,
    json['sgd_1500_to_1999'] as int,
    json['sgd_2000_to_2499'] as int,
    json['sgd_2500_to_2999'] as int,
    json['sgd_3000_to_3999'] as int,
    json['sgd_4000_to_4999'] as int,
    json['sgd_5000_to_5999'] as int,
    json['sgd_6000_to_6999'] as int,
    json['sgd_7000_to_7999'] as int,
    json['sgd_8000_over'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$IncomeFromWorkToJson(IncomeFromWork instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'below_sgd_1000': instance.below1000,
      'sgd_1000_to_1499': instance.between1000To1499,
      'sgd_1500_to_1999': instance.between1500To1999,
      'sgd_2000_to_2499': instance.between2000To2499,
      'sgd_2500_to_2999': instance.between2500To2999,
      'sgd_3000_to_3999': instance.between3000To3999,
      'sgd_4000_to_4999': instance.between4000To4999,
      'sgd_5000_to_5999': instance.between5000To5999,
      'sgd_6000_to_6999': instance.between6000To6999,
      'sgd_7000_to_7999': instance.between7000To7999,
      'sgd_8000_over': instance.over8000,
    };
