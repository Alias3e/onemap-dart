import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/onemapsg.dart';

/// SDK to retrieve a compilation of thematic information from various agencies.
class ThemesApi {
  final Dio _dio;

  ThemesApi(this._dio);

  /// Check the updatedness of themes.
  /// https://docs.onemap.sg/#check-theme-status
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * Queries status of a theme using [queryName]. Themes’ query names can be retrieved using [getAllThemesInfo].
  /// * [dateTime] to check against.
  Future<Status> checkThemeStatus({
    @required String token,
    @required String queryName,
    @required DateTime dateTime,
  }) async {
    //YYYY-MM-DDTHH:MM:SS:FFFZ
    //2015-02-10T16:00:00.000Z
    //2020-10-18T20:44:14.559Z
    DateFormat dateFormat = DateFormat("y-MM-ddTHH:mm:ss.S'Z'");
    String dateTimeString = dateFormat.format(dateTime);
    print(dateTimeString);
    var response = await _dio
        .get('/privateapi/themesvc/checkThemeStatus', queryParameters: {
      'token': token,
      'dateTime': dateTimeString,
      'queryName': queryName,
    });

    return Status.fromJson(response.data);
  }

  /// Search themes via the [queryName] and returns the themes’ info. Requires
  /// [token] that can be retrieved using [Authentication.getToken].
  /// https://docs.onemap.sg/#get-theme-info
  Future<ThemeInfo> getThemeInfo({
    String token,
    String queryName,
  }) async {
    var response =
        await _dio.get('/privateapi/themesvc/getThemeInfo', queryParameters: {
      'token': token,
      'queryName': queryName,
    });

    return ThemeInfo.fromJson(response.data);
  }

  /// Retrieves and returns a list of all available themes.
  /// https://docs.onemap.sg/#get-all-themes-info
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [moreInfo] requests for additional information (icon, category & theme owner).
  /// Defaults to false.
  Future<ThemeInfo> getAllThemesInfo({
    String token,
    bool moreInfo = false,
  }) async {
    var response = await _dio
        .get('/privateapi/themesvc/getAllThemesInfo', queryParameters: {
      'token': token,
      'moreInfo': moreInfo ? 'Y' : 'N',
    });

    return ThemeInfo.fromJson(response.data);
  }

  /// This API searches and returns specified list of themes that are filtered out via a search term.
  /// https://docs.onemap.sg/#retrieve-theme
  ///
  /// * Enables users to retrieve theme information. Themes’ query names can be retrieved using [getAllThemesInfo].
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * Define the extent of map to retrieve theme data using [top], [bottom], [left] and [right].
  Future<Themes> retrieveThemes({
    @required token,
    @required queryName,
    double top,
    double bottom,
    double left,
    double right,
  }) async {
    Map<String, dynamic> queryParams = {
      'token': token,
      'queryName': queryName,
    };
    if (top != 0.0 && bottom != 0.0 && left != 0.0 && right != 0.0) {
      String extent = '$bottom,$left,$top,$right';
      queryParams.putIfAbsent('extent', () => extent);
    }
    var response = await _dio.get('/privateapi/themesvc/retrieveTheme',
        queryParameters: queryParams);
    return Themes.fromJson(response.data);
  }
}
