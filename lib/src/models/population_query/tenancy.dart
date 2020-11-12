import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'tenancy.g.dart';

/// Tenacy information retrieved from population query.
@JsonSerializable(createToJson: false)
class Tenancy extends PopulationData {
  /// Number of property owners.
  int owner;

  /// Number of tenants.
  int tenant;

  /// Neither owners of tenants.
  int others;

  Tenancy(this.owner, this.tenant, this.others, String planningArea, int year)
      : super(planningArea, year);

  /// @nodoc
  factory Tenancy.fromJson(Map<String, dynamic> json) =>
      _$TenancyFromJson(json);
}
