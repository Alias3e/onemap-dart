import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'authentication.dart';

/// @nodoc
abstract class Api {
  @protected
  final Dio dio;

  final Authentication authentication;

  Api(this.dio, this.authentication);
}
