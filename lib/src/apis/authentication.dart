import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/models/models.dart';

/// Provides authentication with OneMap service.
class Authentication {
  final Dio _dio;

  Authentication(this._dio);

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
    return OneMapCredentials.fromJson(result.data);
  }
}
