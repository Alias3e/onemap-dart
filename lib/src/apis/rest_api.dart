import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/onemapsg.dart';

/// Contains OneMap rest APIs [search], [reverseGeocodeXY] and [reverseGeocode].
class RestApi {
  final Dio _dio;

  RestApi(this._dio);

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

  /// Retrieves a building address that lies within the defined buffer/radius of the specified x, y coordinates.
  /// Road names are returned within 20m of the specified coordinates.
  /// https://docs.onemap.sg/#reverse-geocode-svy21
  ///
  /// * [x],[y] are map coordinates in SVY21 format.
  /// * [token] is retrieved using [Authentication.getToken]
  /// * Rounds up all buildings in a circumference from a point like a compass; and searches building addresses within the [buffer] range. Defaults to 10m with a maximum of 500m
  /// * [addressType] Provide user the selection of All or HDB properties within the buffer/radius. If HDB is chosen, this will filter to show all HDB-related building. Defaults to All.
  /// * [otherFeatures] enables users to retrieve information on reservoirs, playgrounds, jetties and many more. Defaults to false.
  Future<ReverseGeocode> reverseGeocodeXY({
    @required double x,
    @required double y,
    @required String token,
    int buffer = 10,
    AddressType addressType = AddressType.All,
    bool otherFeatures = false,
  }) async {
    var response =
        await _dio.get('/privateapi/commonsvc/revgeocodexy', queryParameters: {
      'location': '$x,$y',
      'token': token,
      'buffer': buffer,
      'addressType': addressType.toString(),
      'otherFeatures': 'Y',
    });
    return ReverseGeocode.fromJson(response.data);
  }

  /// Retrieves a building address that lies within the defined buffer/radius of the specified [latitude], [longitude] coordinates.
  /// Road names are returned within 20m of the specified coordinates.
  /// https://docs.onemap.sg/#reverse-geocode-wgs84
  ///
  /// * [latitude],[longitude] are map coordinates in WGS84 format.
  /// * [token] is retrieved using [Authentication.getToken]
  /// * Rounds up all buildings in a circumference from a point like a compass; and searches building addresses within the [buffer] range. Defaults to 10m with a maximum of 500m
  /// * [addressType] Provide user the selection of All or HDB properties within the buffer/radius. If HDB is chosen, this will filter to show all HDB-related building. Defaults to All.
  /// * [otherFeatures] enables users to retrieve information on reservoirs, playgrounds, jetties and many more. Defaults to false.
  Future<ReverseGeocode> reverseGeocode({
    @required double latitude,
    @required double longitude,
    @required String token,
    int buffer = 10,
    AddressType addressType = AddressType.All,
    bool otherFeatures = false,
  }) async {
    var response =
        await _dio.get('/privateapi/commonsvc/revgeocode', queryParameters: {
      'location': '$latitude,$longitude',
      'token': token,
      'buffer': buffer,
      'addressType': addressType.toString(),
      'otherFeatures': 'Y',
    });
    return ReverseGeocode.fromJson(response.data);
  }
}
