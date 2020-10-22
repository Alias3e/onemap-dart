import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/population_query/population_data.dart';

part 'education_status.g.dart';

@JsonSerializable()

/// Describe the education status data retrieved from population query.
class EducationStatus extends PopulationData {
  @JsonKey(name: 'pre_primary')
  int prePrimary;

  int primary;

  int secondary;

  @JsonKey(name: 'post_secondary')
  int postSecondary;

  int polytechnic;

  @JsonKey(name: 'prof_qualification_diploma')
  int profQualificationDiploma;

  int university;

  EducationStatus(
      this.prePrimary,
      this.primary,
      this.secondary,
      this.postSecondary,
      this.polytechnic,
      this.profQualificationDiploma,
      this.university,
      String planningArea,
      int year)
      : super(planningArea, year);

  factory EducationStatus.fromJson(Map<String, dynamic> json) =>
      _$EducationStatusFromJson(json);
  Map<String, dynamic> toJson() => _$EducationStatusToJson(this);
}
