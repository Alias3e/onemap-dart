// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onemap_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneMapCredentials _$OneMapCredentialsFromJson(Map<String, dynamic> json) {
  return OneMapCredentials(
    json['access_token'] as String,
    JsonTypeAdapter.intFromString(json['expiry_timestamp'] as String),
  );
}

Map<String, dynamic> _$OneMapCredentialsToJson(OneMapCredentials instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expiry_timestamp': JsonTypeAdapter.intToString(instance.expiryTimestamp),
    };
