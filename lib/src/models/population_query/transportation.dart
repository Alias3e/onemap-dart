import 'package:json_annotation/json_annotation.dart';
import 'population_data.dart';

part 'transportation.g.dart';

@JsonSerializable()

/// Modes of transportation.
class Transportation extends PopulationData {
  int bus;

  int mrt;

  @JsonKey(name: 'mrt_bus')
  int mrtAndBus;

  @JsonKey(name: 'mrt_car')
  int mrtAndCar;

  @JsonKey(name: 'mrt_other')
  int mrtAndOther;

  int taxi;

  int car;

  @JsonKey(name: 'pvt_chartered_bus')
  int privateCharteredBus;

  @JsonKey(name: 'lorry_pickup')
  int lorryOrPickup;

  @JsonKey(name: 'motorcycle_scooter')
  int motorcycleOrScooter;

  int others;

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

  factory Transportation.fromJson(Map<String, dynamic> json) =>
      _$TransportationFromJson(json);
  Map<String, dynamic> toJson() => _$TransportationToJson(this);
}
