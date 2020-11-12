import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'household_dwelling_type.g.dart';

/// Data of household dwelling retrieved from population query.
@JsonSerializable(createToJson: false)
class HouseholdDwellingType extends PopulationData {
  /// HDB 1 or 2 rooms.
  @JsonKey(name: 'hdb_1_and_2_room_flats')
  int oneToTwoRoomsHDB;

  /// HDB 3 rooms.
  @JsonKey(name: 'hdb_3_room_flats')
  int threeRoomHDB;

  /// HDB 4 rooms.
  @JsonKey(name: 'hdb_4_room_flats')
  int fourRoomHDB;

  /// HDB 5 rooms or executive flats..
  @JsonKey(name: 'hdb_5_room_and_executive_flats')
  int fiveRoomHDBExecutive;

  /// Condominuims or other apartments type.
  @JsonKey(name: 'condominiums_and_other_apartments')
  int condominiums;

  /// Landed properties.
  @JsonKey(name: 'landed_properties')
  int landedProperties;

  /// Other type of properties.
  int others;

  /// Total number of properties belonging to HDB.
  @JsonKey(name: 'total_hdb')
  int totalHDB;

  HouseholdDwellingType(
      this.oneToTwoRoomsHDB,
      this.threeRoomHDB,
      this.fourRoomHDB,
      this.fiveRoomHDBExecutive,
      this.condominiums,
      this.landedProperties,
      this.others,
      this.totalHDB,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory HouseholdDwellingType.fromJson(Map<String, dynamic> json) =>
      _$HouseholdDwellingTypeFromJson(json);
}
