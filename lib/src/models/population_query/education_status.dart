import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'education_status.g.dart';

/// Describe the education status data retrieved from population query.
@JsonSerializable(createToJson: false)
class EducationStatus extends PopulationData {
  /// Number of people whose highest level of education is pre primary.
  @JsonKey(name: 'pre_primary')
  int prePrimary;

  /// Number of people whose highest level of education is primary.
  int primary;

  /// Number of people whose highest level of education is secondary.
  int secondary;

  /// Number of people whose highest level of education is post secondary.
  @JsonKey(name: 'post_secondary')
  int postSecondary;

  /// Number of people whose highest level of education is polytechnic.
  int polytechnic;

  /// Number of people whose highest level of education is professional qualification diploma.
  @JsonKey(name: 'prof_qualification_diploma')
  int profQualificationDiploma;

  /// Number of people whose highest level of education is university graduate.
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

  /// @nodoc
  factory EducationStatus.fromJson(Map<String, dynamic> json) =>
      _$EducationStatusFromJson(json);
}
