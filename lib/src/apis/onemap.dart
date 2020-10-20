import 'package:dio/dio.dart';
import 'package:onemapsg/onemapsg.dart';

/// Entry point for OneMap SDK.
class OneMap {
  /// [Dio] client to help make HTTP requests.
  Dio _dio;

  /// [connectTimeout] in milliseconds for creating a connection to OneMap service.
  /// Defaults to 5000 and 0 means no limit for timeout.
  int connectTimeout = 5000;

  /// [receiveTimeout] in milliseconds for receiving data from OneMap service.
  /// Defaults to 5000 and 0 means no limit for timeout.
  int receiveTimeout = 5000;

  Authentication _authentication;
  RestApi _restApi;
  CoordinateConverter _coordinateConverter;
  ThemesApi _themes;
  PlanningAreaApi _planningArea;

  /// Private constructor to initial this instance;
  OneMap._privateConstructor() {
    BaseOptions options = BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        baseUrl: 'https://developers.onemap.sg');
    _dio = Dio(options);
  }

  /// Get the instance of an OneMap object.
  static final OneMap instance = OneMap._privateConstructor();

  /// OneMap [Authentication] APIs.
  Authentication get authentication {
    _authentication ??= Authentication(_dio);
    return _authentication;
  }

  /// OneMap REST APIs such as search and reverse geocoding.
  RestApi get restApi {
    _restApi ??= RestApi(_dio);
    return _restApi;
  }

  /// Convert coordinates between various spatial references.
  CoordinateConverter get coordinateConverter {
    _coordinateConverter ??= CoordinateConverter(_dio);
    return _coordinateConverter;
  }

  // Provides thematic information(dengue cluster, kindergartens etc) from various agencies.
  ThemesApi get themes {
    _themes ??= ThemesApi(_dio);
    return _themes;
  }

  // APIs to retrieve data related to the planning area of Singapore.
  PlanningAreaApi get planningArea {
    _planningArea ??= PlanningAreaApi(_dio);
    return _planningArea;
  }
}
