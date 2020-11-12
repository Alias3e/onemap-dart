import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'occupation.g.dart';

@JsonSerializable(createToJson: false)

/// Occupation distribution retrieved from population query.
class Occupation extends PopulationData {
  /// Number of senior officials and managers.
  @JsonKey(name: 'senior_officials_managers')
  int seniorOfficialsManagers;

  /// Number of professionals.
  int professionals;

  /// Number of associate professionals and technicians.
  @JsonKey(name: 'associate_professionals_tech')
  int associateProfessionalsTech;

  /// Number of people who does clerical work.
  int clerical;

  /// Number of people who does services and sales.
  @JsonKey(name: 'service_sales')
  int serviceSales;

  /// Number of people who does agricultural and fishery work.
  @JsonKey(name: 'agricultural_fishery')
  int agriculturalFishery;

  /// Number of craftsmen.
  @JsonKey(name: 'production_craftsmen')
  int productionCraftsmen;

  /// Number of machine operators and plant workers.
  @JsonKey(name: 'plant_machine_operators')
  int plantMachineOperators;

  /// Number of cleaners and labourers.
  @JsonKey(name: 'cleaners_labourers')
  int cleanersLabourers;

  /// Number of unclassified workers.
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

  /// @nodoc
  factory Occupation.fromJson(Map<String, dynamic> json) =>
      _$OccupationFromJson(json);
}
