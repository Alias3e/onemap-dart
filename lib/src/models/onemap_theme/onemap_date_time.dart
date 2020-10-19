import 'package:json_annotation/json_annotation.dart';

part 'onemap_date_time.g.dart';

@JsonSerializable()

/// Describes theme date, time and timezone.
class OneMapDateTime {
  @JsonKey(name: 'date')
  String dateString;

  @JsonKey(name: 'timezone_type')
  int timezoneType;

  @JsonKey(name: 'timezone')
  String timezone;

  DateTime get dateTime => DateTime.parse(dateString);

  OneMapDateTime(this.dateString, this.timezone, this.timezoneType);

  factory OneMapDateTime.fromJson(Map<String, dynamic> json) =>
      _$OneMapDateTimeFromJson(json);
  Map<String, dynamic> toJson() => _$OneMapDateTimeToJson(this);
}
