import 'package:dio/dio.dart';
import 'package:onemapsg/onemapsg.dart';

import 'authentication.dart';
import 'coordinate_converter.dart';
import 'planning_area_api.dart';
import 'population_query.dart';
import 'rest_api.dart';
import 'routing.dart';
import 'themes_api.dart';

/// Entry point for OneMap SDK.
class OneMap {
  /// [Dio] client to help make HTTP requests.
  Dio _dio;

  static BaseOptions _options;
  static String _cacheToken;
  static OneMap _instance = OneMap._internal();

  Authentication _authentication;
  RestApi _restApi;
  CoordinateConverter _coordinateConverter;
  ThemesApi _themes;
  PlanningAreaApi _planningArea;
  PopulationQuery _populationQuery;
  Routing _routing;

  /// @nodoc
  /// Private constructor for Singleton pattern.
  OneMap._internal() {
    _dio = Dio(_options);
    _authentication = Authentication(_dio,
        accessToken: _cacheToken == null ? '' : _cacheToken);
  }

  /// Singleton instance of this class.
  static get instance {
    if (_options == null) throw OneMapNotInitializedException();
    return _instance;
  }

  /// Initialize [OneMap] object which allows access all API functions. This
  /// method needs to be called before accessing the [instance] of this class
  /// otherwise [OneMapNotInitializedException] will be thrown.
  ///
  /// * [connectTimeout] in milliseconds for creating a connection to OneMap service.
  /// Defaults value is 5000, 0 means no limit for timeout.
  /// * [receiveTimeout] in milliseconds for receiving data from OneMap service.
  /// Defaults value is 5000, 0 means no limit for timeout.
  /// * Optionally supply a previously cached [accessToken].
  static void initialize(
      {int connectTimeout = 5000,
      int receiveTimeout = 5000,
      String accessToken}) {
    _options = BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        baseUrl: 'https://developers.onemap.sg');
    _cacheToken = accessToken;
  }

  /// OneMap [Authentication] API.
  Authentication get authentication {
    return _authentication;
  }

  /// OneMap REST APIs such as search and reverse geocoding.
  RestApi get restApi {
    _restApi ??= RestApi(_dio, _authentication);
    return _restApi;
  }

  /// Convert coordinates between various spatial references.
  CoordinateConverter get coordinateConverter {
    _coordinateConverter ??= CoordinateConverter(_dio);
    return _coordinateConverter;
  }

  /// Provides thematic information(dengue cluster, kindergartens etc) from various agencies.
  ThemesApi get themes {
    _themes ??= ThemesApi(_dio, _authentication);
    return _themes;
  }

  /// APIs to retrieve data related to the planning area of Singapore.
  PlanningAreaApi get planningArea {
    _planningArea ??= PlanningAreaApi(_dio, _authentication);
    return _planningArea;
  }

  /// Set of APIs to retrieve population datasets provided by the Department Of Statistics for analytical needs.
  PopulationQuery get populationQuery {
    _populationQuery ??= PopulationQuery(_dio, _authentication);
    return _populationQuery;
  }

  /// Retrieve routes given starting point to destination using various modes of
  /// transportation.
  Routing get routing {
    _routing ??= Routing(_dio, _authentication);
    return _routing;
  }
}
