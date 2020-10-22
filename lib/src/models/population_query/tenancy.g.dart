// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tenancy _$TenancyFromJson(Map<String, dynamic> json) {
  return Tenancy(
    json['owner'] as int,
    json['tenant'] as int,
    json['others'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$TenancyToJson(Tenancy instance) => <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'owner': instance.owner,
      'tenant': instance.tenant,
      'others': instance.others,
    };
