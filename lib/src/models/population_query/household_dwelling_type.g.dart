// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_dwelling_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseholdDwellingType _$HouseholdDwellingTypeFromJson(
    Map<String, dynamic> json) {
  return HouseholdDwellingType(
    json['hdb_1_and_2_room_flats'] as int,
    json['hdb_3_room_flats'] as int,
    json['hdb_4_room_flats'] as int,
    json['hdb_5_room_and_executive_flats'] as int,
    json['condominiums_and_other_apartments'] as int,
    json['landed_properties'] as int,
    json['others'] as int,
    json['total_hdb'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$HouseholdDwellingTypeToJson(
        HouseholdDwellingType instance) =>
    <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'hdb_1_and_2_room_flats': instance.oneToTwoRoomsHDB,
      'hdb_3_room_flats': instance.threeRoomHDB,
      'hdb_4_room_flats': instance.fourRoomHDB,
      'hdb_5_room_and_executive_flats': instance.fiveRoomHDBExecutive,
      'condominiums_and_other_apartments': instance.condominiums,
      'landed_properties': instance.landedProperties,
      'others': instance.others,
      'total_hdb': instance.totalHDB,
    };
