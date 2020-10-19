// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onemap_date_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneMapDateTime _$OneMapDateTimeFromJson(Map<String, dynamic> json) {
  return OneMapDateTime(
    json['date'] as String,
    json['timezone'] as String,
    json['timezone_type'] as int,
  );
}

Map<String, dynamic> _$OneMapDateTimeToJson(OneMapDateTime instance) =>
    <String, dynamic>{
      'date': instance.dateString,
      'timezone_type': instance.timezoneType,
      'timezone': instance.timezone,
    };
