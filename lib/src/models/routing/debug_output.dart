import 'package:json_annotation/json_annotation.dart';

part 'debug_output.g.dart';

@JsonSerializable(createToJson: false)

/// Debug output returned when calling route API with route type set to public transport.
class DebugOutput {
  int precalculationTime;

  int pathCalculationTime;

  List<int> pathTimes;

  int renderingTime;

  int totalTime;

  bool timedOut;

  DebugOutput(this.totalTime, this.pathCalculationTime, this.pathTimes,
      this.precalculationTime, this.renderingTime, this.timedOut);

  /// @nodoc
  factory DebugOutput.fromJson(Map<String, dynamic> json) =>
      _$DebugOutputFromJson(json);
}
