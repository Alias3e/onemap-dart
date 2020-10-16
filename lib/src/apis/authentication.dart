import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/models/models.dart';

/// Provides authentication with OneMap service.
class Authentication {
  final Dio _dio;

  Authentication(this._dio);

  /// Authenticate user to get access token in order to request private APIs.
  ///
  /// * [email] Email used to register on OneMap.sg
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
