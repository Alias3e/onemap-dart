import 'package:json_annotation/json_annotation.dart';

import '../type_adapter.dart';

part 'onemap_credentials.g.dart';

@JsonSerializable(createToJson: false)

/// Access token and token expiry after authentication.
class OneMapCredentials {
  @JsonKey(name: 'access_token')

  /// OneMap access token.
  String accessToken;
  @JsonKey(name: 'expiry_timestamp', fromJson: JsonTypeAdapter.intFromString)

  /// Access token expiry timestamp.
  int expiryTimestamp;

  /// [DateTime] object of access token expiry date.
  DateTime get expiry =>
      DateTime.fromMillisecondsSinceEpoch(expiryTimestamp * 1000);

  OneMapCredentials(this.accessToken, this.expiryTimestamp);

  /// @nodoc
  factory OneMapCredentials.fromJson(Map<String, dynamic> json) =>
      _$OneMapCredentialsFromJson(json);
}
