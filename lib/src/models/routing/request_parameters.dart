import 'package:json_annotation/json_annotation.dart';

part 'request_parameters.g.dart';

@JsonSerializable(createToJson: false)

/// Request parameters that server returns as part of public transport route response.
class RequestParameters {
  String date;

  String preferredRoutes;

  String walkReluctance;

  String fromPlace;

  String transferPenalty;

  String maxWalkDistance;

  String maxTransfers;

  String otherThanPreferredRoutesPenalty;

  String numItineraries;

  String waitAtBeginningFactor;

  String mode;

  String arriveBy;

  String showIntermediateStops;

  String toPlace;

  String time;

  RequestParameters(
      this.date,
      this.time,
      this.arriveBy,
      this.fromPlace,
      this.maxTransfers,
      this.maxWalkDistance,
      this.mode,
      this.numItineraries,
      this.otherThanPreferredRoutesPenalty,
      this.preferredRoutes,
      this.showIntermediateStops,
      this.toPlace,
      this.transferPenalty,
      this.waitAtBeginningFactor,
      this.walkReluctance);

  /// @nodoc
  factory RequestParameters.fromJson(Map<String, dynamic> json) =>
      _$RequestParametersFromJson(json);
}
