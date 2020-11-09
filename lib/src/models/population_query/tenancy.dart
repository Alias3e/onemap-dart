import 'package:json_annotation/json_annotation.dart';
import 'population_data.dart';

part 'tenancy.g.dart';

@JsonSerializable()

/// Tenacy information retrieved from population query.
class Tenancy extends PopulationData {
  int owner;
  int tenant;
  int others;

  Tenancy(this.owner, this.tenant, this.others, String planningArea, int year)
      : super(planningArea, year);

  factory Tenancy.fromJson(Map<String, dynamic> json) =>
      _$TenancyFromJson(json);
  Map<String, dynamic> toJson() => _$TenancyToJson(this);
}
