// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Occupation _$OccupationFromJson(Map<String, dynamic> json) {
  return Occupation(
    json['agricultural_fishery'] as int,
    json['associate_professionals_tech'] as int,
    json['cleaners_labourers'] as int,
    json['clerical'] as int,
    json['plant_machine_operators'] as int,
    json['production_craftsmen'] as int,
    json['professionals'] as int,
    json['senior_officials_managers'] as int,
    json['service_sales'] as int,
    json['workers_not_classified'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$OccupationToJson(Occupation instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'senior_officials_managers': instance.seniorOfficialsManagers,
      'professionals': instance.professionals,
      'associate_professionals_tech': instance.associateProfessionalsTech,
      'clerical': instance.clerical,
      'service_sales': instance.serviceSales,
      'agricultural_fishery': instance.agriculturalFishery,
      'production_craftsmen': instance.productionCraftsmen,
      'plant_machine_operators': instance.plantMachineOperators,
      'cleaners_labourers': instance.cleanersLabourers,
      'workers_not_classified': instance.unclassified,
    };
