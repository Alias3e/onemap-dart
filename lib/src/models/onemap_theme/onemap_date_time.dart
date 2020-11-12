import 'package:json_annotation/json_annotation.dart';

part 'onemap_date_time.g.dart';

/// Describes theme date, time and timezone.
@JsonSerializable(createToJson: false)
class OneMapDateTime {
  @JsonKey(name: 'date')
  String dateString;

  @JsonKey(name: 'timezone_type')
  int timezoneType;

  @JsonKey(name: 'timezone')
  String timezone;

  /// Returns [DateTime] object based on this object's [dateString].
  DateTime get dateTime => DateTime.parse(dateString);

  OneMapDateTime(this.dateString, this.timezone, this.timezoneType);

  /// @nodoc
  factory OneMapDateTime.fromJson(Map<String, dynamic> json) =>
      _$OneMapDateTimeFromJson(json);
}
