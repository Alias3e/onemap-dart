import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/models/onemap_credentials.dart';
import 'package:onemapsg/src/models/search.dart';

class OneMap {
  /// [Dio] client to help make HTTP requests.
  Dio _dio;

  /// Create OneMap client with optional connection options.
  ///
  /// * [connectTimeout] is the limit in milliseconds for opening url.
  /// Defaults to 5000 and 0 means no limit for timeout.
  /// * [receiveTimeout] is the limit in milliseconds for receiving data.
  /// Defaults to 5000 and 0 means no limit for timeout.
  OneMap({int connectTimeout = 5000, int receiveTimeout = 5000}) {
    BaseOptions options = BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        baseUrl: 'https://developers.onemap.sg');
    _dio = Dio(options);
  }

  /// Authenticate user to get access token in order to request private APIs.
  ///
  /// * [email] Email used to register on OneMap.sg
  /// * [password] User's password on OneMap.sg
  Future<OneMapCredentials> authenticate(
      {@required String email, @required String password}) async {
    var result = await _dio.post('/privateapi/auth/post/getToken',
        data: {'email': email, 'password': password});
    return OneMapCredentials.fromJson(result.data);
  }

  /// Search address data for a given search value. (https://docs.onemap.sg/#search)
  ///
  /// * [searchVal] entered by user that is used to filter out the results.
  /// * [returnGeom] indicates if user wants to return the geometry.
  /// * [getAddrDetails] indicates if user wants to return address details for a point.
  /// * [pageNumber] specifies the page to retrieve your search results from.
  Future<Search> search({
    @required String searchVal,
    @required bool returnGeom,
    @required bool getAddrDetails,
    int pageNumber,
  }) async {
    var result = await _dio.get(
      '/commonapi/search',
      queryParameters: {
        'searchVal': searchVal,
        'returnGeom': returnGeom ? 'Y' : 'N',
        'getAddrDetails': getAddrDetails ? 'Y' : 'N',
        'pageNumber': pageNumber.toString()
      },
    );
    return Search.fromJson(result.data);
  }
}
