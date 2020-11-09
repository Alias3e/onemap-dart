import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../models/authentication/onemap_credentials.dart';

/// Provides authentication with OneMap service.
class Authentication {
  final Dio _dio;

  String accessToken;

  Authentication(this._dio, {this.accessToken});

  /// Authenticate user to get access token in order to request private APIs.
  /// Users are required to register for an account on https://docs.onemap.sg/#register-free-account
  /// Step by step authentication guide can be found at https://discuss.onemap.sg/t/steps-for-api-authentication/59
  ///
  /// * [email] Email registered to OneMap.sg
  /// * [password] User's password on OneMap.sg
  Future<OneMapCredentials> getToken({
    @required String email,
    @required String password,
  }) async {
    var result = await _dio.post('/privateapi/auth/post/getToken',
        data: {'email': email, 'password': password});

    OneMapCredentials credentials = OneMapCredentials.fromJson(result.data);
    accessToken = credentials.accessToken;
    return credentials;
  }
}
