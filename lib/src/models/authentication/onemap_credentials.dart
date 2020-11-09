import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

part 'onemap_credentials.g.dart';

@JsonSerializable()

/// Access token and token expiry after authentication.
class OneMapCredentials {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(
      name: 'expiry_timestamp',
      fromJson: JsonTypeAdapter.intFromString,
      toJson: JsonTypeAdapter.intToString)
  int expiryTimestamp;

  DateTime get expiry =>
      DateTime.fromMillisecondsSinceEpoch(expiryTimestamp * 1000);

  OneMapCredentials(this.accessToken, this.expiryTimestamp);

  factory OneMapCredentials.fromJson(Map<String, dynamic> json) =>
      _$OneMapCredentialsFromJson(json);
  Map<String, dynamic> toJson() => _$OneMapCredentialsToJson(this);
}
