import 'package:json_annotation/json_annotation.dart';
import 'gender_data.dart';

part 'marital_status.g.dart';

@JsonSerializable()

/// Marital status retrieved from population query.
class MaritalStatus extends GenderData {
  int single;
  int married;
  int widowed;
  int divorced;

  MaritalStatus(this.single, this.married, this.widowed, this.divorced,
      String gender, String planningArea, int year)
      : super(gender, planningArea, year);

  factory MaritalStatus.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusFromJson(json);
  Map<String, dynamic> toJson() => _$MaritalStatusToJson(this);
}
