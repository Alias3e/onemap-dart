import 'package:json_annotation/json_annotation.dart';

import 'household_dwelling_type.dart';

part 'population_dwelling_type.g.dart';

/// Data of population dwelling retrieved from population query.
@JsonSerializable(createToJson: false)
class PopulationDwellingType extends HouseholdDwellingType {
  /// Total number.
  int total;

  PopulationDwellingType(
      this.total,
      int oneToTwoRoomsHDB,
      int threeRoomHDB,
      int fourRoomHDB,
      int fiveRoomHDBExecutive,
      int condominiums,
      int landedProperties,
      int others,
      int totalHDB,
      String planningArea,
      int year)
      : super(
            oneToTwoRoomsHDB,
            threeRoomHDB,
            fourRoomHDB,
            fiveRoomHDBExecutive,
            condominiums,
            landedProperties,
            others,
            totalHDB,
            planningArea,
            year);

  /// @nodoc
  factory PopulationDwellingType.fromJson(Map<String, dynamic> json) =>
      _$PopulationDwellingTypeFromJson(json);
}
