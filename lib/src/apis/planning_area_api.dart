import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/apis/authentication.dart';
import 'package:onemapsg/src/models/planning_area_api/planning_area.dart';

/// APIs that provide data related to the planning area of Singapore.
class PlanningAreaApi {
  final Dio _dio;

  PlanningAreaApi(this._dio);

  /// Provides users with information of Singapore’s planning area.
  /// https://docs.onemap.sg/#planning-area-polygons
  ///
  /// * [token] is retrieved using [Authentication.getToken].
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  Future<List<PlanningArea>> getAllPlanningAreas(
      {@required String token, String year}) async {
    Map<String, String> queryParameters = {'token': token};
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await _dio.get('/privateapi/popapi/getAllPlanningarea',
        queryParameters: {'token': token});
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }

  /// Retrieve the names of every planning area in Singapore.
  /// https://docs.onemap.sg/#names-of-planning-area
  ///
  /// * [token] is retrieved using [Authentication.getToken].
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  Future<List<PlanningArea>> getPlanningAreasName(
      {@required String token, String year}) async {
    Map<String, String> queryParameters = {'token': token};
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await _dio.get('/privateapi/popapi/getPlanningareaNames',
        queryParameters: queryParameters);
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }

  /// Retrieve a single planning area based on given latitude and longitude.
  /// https://docs.onemap.sg/#planning-area-query
  ///
  /// * [token] is retrieved using [Authentication.getToken].
  /// * Planning [year] that you are retrieving. Available are 1998,2008,2014
  /// * Retrieve planning area based on [latitude] and [longitude].
  Future<List<PlanningArea>> getPlanningArea(
      {@required String token,
      @required double latitude,
      @required double longitude,
      String year}) async {
    Map<String, String> queryParameters = {
      'token': token,
      'lat': latitude.toString(),
      'lng': longitude.toString()
    };
    if (year != null && year.isNotEmpty)
      queryParameters.putIfAbsent('year', () => year);
    var response = await _dio.get('/privateapi/popapi/getPlanningarea',
        queryParameters: queryParameters);
    List<PlanningArea> areas =
        (response.data as List).map((i) => PlanningArea.fromJson(i)).toList();
    return areas;
  }
}
