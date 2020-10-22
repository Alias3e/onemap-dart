import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/population_query/population_data.dart';

part 'household_dwelling_type.g.dart';

@JsonSerializable()

/// Data of household dwelling retrieved from population query.
class HouseholdDwellingType extends PopulationData {
  @JsonKey(name: 'hdb_1_and_2_room_flats')
  int oneToTwoRoomsHDB;

  @JsonKey(name: 'hdb_3_room_flats')
  int threeRoomHDB;

  @JsonKey(name: 'hdb_4_room_flats')
  int fourRoomHDB;

  @JsonKey(name: 'hdb_5_room_and_executive_flats')
  int fiveRoomHDBExecutive;

  @JsonKey(name: 'condominiums_and_other_apartments')
  int condominiums;

  @JsonKey(name: 'landed_properties')
  int landedProperties;

  int others;

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

  factory HouseholdDwellingType.fromJson(Map<String, dynamic> json) =>
      _$HouseholdDwellingTypeFromJson(json);
  Map<String, dynamic> toJson() => _$HouseholdDwellingTypeToJson(this);
}
