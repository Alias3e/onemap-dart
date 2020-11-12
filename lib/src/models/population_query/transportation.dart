import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'transportation.g.dart';

/// Modes of transportation.
@JsonSerializable(createToJson: false)
class Transportation extends PopulationData {
  /// Number of people who commute using bus.
  int bus;

  /// Number of people who commute using MRT.
  int mrt;

  /// Number of people who commute using bus and MRT.
  @JsonKey(name: 'mrt_bus')
  int mrtAndBus;

  /// Number of people who commute using bus and car.
  @JsonKey(name: 'mrt_car')
  int mrtAndCar;

  /// Number of people who commute using MRT and another mode of transport.
  @JsonKey(name: 'mrt_other')
  int mrtAndOther;

  /// Number of people who commute using taxi.
  int taxi;

  /// Number of people who commute using car.
  int car;

  /// Number of people who commute using private chartered bus.
  @JsonKey(name: 'pvt_chartered_bus')
  int privateCharteredBus;

  /// Number of people who commute using lorry or pickup.
  @JsonKey(name: 'lorry_pickup')
  int lorryOrPickup;

  /// Number of people who commute using motorcycle or scooter.
  @JsonKey(name: 'motorcycle_scooter')
  int motorcycleOrScooter;

  /// Number of people who commute using another mode of transport.
  int others;

  /// Number of people who does not need transportation.
  @JsonKey(name: 'no_transport_required')
  int noTransportRequired;

  Transportation(
      this.bus,
      this.mrt,
      this.mrtAndBus,
      this.mrtAndCar,
      this.mrtAndOther,
      this.taxi,
      this.car,
      this.privateCharteredBus,
      this.lorryOrPickup,
      this.motorcycleOrScooter,
      this.others,
      this.noTransportRequired,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory Transportation.fromJson(Map<String, dynamic> json) =>
      _$TransportationFromJson(json);
}
