import 'population_data.dart';

/// Parent class for population data with gender field.
abstract class GenderData extends PopulationData {
  String gender;

  GenderData(
    this.gender,
    String planningArea,
    int year,
  ) : super(planningArea, year);
}
