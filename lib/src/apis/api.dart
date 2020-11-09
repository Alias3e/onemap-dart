import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'authentication.dart';

abstract class Api {
  @protected
  final Dio dio;

  final Authentication authentication;

  Api(this.dio, this.authentication);
}
