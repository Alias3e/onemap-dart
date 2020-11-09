import 'package:json_annotation/json_annotation.dart';
import 'population_data.dart';

part 'occupation.g.dart';

@JsonSerializable()

/// Occupation distribution retrieved from population query.
class Occupation extends PopulationData {
  @JsonKey(name: 'senior_officials_managers')
  int seniorOfficialsManagers;

  int professionals;

  @JsonKey(name: 'associate_professionals_tech')
  int associateProfessionalsTech;

  int clerical;

  @JsonKey(name: 'service_sales')
  int serviceSales;

  @JsonKey(name: 'agricultural_fishery')
  int agriculturalFishery;

  @JsonKey(name: 'production_craftsmen')
  int productionCraftsmen;

  @JsonKey(name: 'plant_machine_operators')
  int plantMachineOperators;

  @JsonKey(name: 'cleaners_labourers')
  int cleanersLabourers;

  @JsonKey(name: 'workers_not_classified')
  int unclassified;

  Occupation(
      this.agriculturalFishery,
      this.associateProfessionalsTech,
      this.cleanersLabourers,
      this.clerical,
      this.plantMachineOperators,
      this.productionCraftsmen,
      this.professionals,
      this.seniorOfficialsManagers,
      this.serviceSales,
      this.unclassified,
      String planningArea,
      int year)
      : super(planningArea, year);

  factory Occupation.fromJson(Map<String, dynamic> json) =>
      _$OccupationFromJson(json);
  Map<String, dynamic> toJson() => _$OccupationToJson(this);
}
