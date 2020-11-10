import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../src/models/planning_area_api/planning_area.dart';
import '../missing_token_exception.dart';
import 'api.dart';
import 'authentication.dart';

/// APIs that provide data related to the planning area of Singapore.
class PlanningAreaApi extends Api {
  PlanningAreaApi(Dio dio, Authentication authentication)
      : super(dio, authentication);

  /// Provides users with information of Singapore’s planning area.
  /// https://docs.onemap.sg/#planning-area-polygons
  ///
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  Future<List<PlanningArea>> getAllPlanningAreas({String year}) async {
    if (authentication.accessToken.isEmpty) throw MissingTokenException();
    Map<String, String> queryParameters = {'token': authentication.accessToken};
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await dio.get('/privateapi/popapi/getAllPlanningarea',
        queryParameters: queryParameters);
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }

  /// Retrieve the names of every planning area in Singapore.
  /// https://docs.onemap.sg/#names-of-planning-area
  ///
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  Future<List<PlanningArea>> getPlanningAreasName({String year}) async {
    if (authentication.accessToken.isEmpty) throw MissingTokenException();
    Map<String, String> queryParameters = {'token': authentication.accessToken};
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await dio.get('/privateapi/popapi/getPlanningareaNames',
        queryParameters: queryParameters);
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }

  /// Retrieve a single planning area based on given latitude and longitude.
  /// https://docs.onemap.sg/#planning-area-query
  ///
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  /// * Retrieve planning area based on [latitude] and [longitude].
  Future<List<PlanningArea>> getPlanningArea(
      {@required double latitude,
      @required double longitude,
      String year}) async {
    if (authentication.accessToken.isEmpty) throw MissingTokenException();
    Map<String, String> queryParameters = {
      'token': authentication.accessToken,
      'lat': latitude.toString(),
      'lng': longitude.toString()
    };
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await dio.get('/privateapi/popapi/getPlanningarea',
        queryParameters: queryParameters);
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }
}
