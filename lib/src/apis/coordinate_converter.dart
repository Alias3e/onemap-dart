import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../src/models/coordinate/coordinate.dart';

/// Provides coordinate conversion between EPSG:4326, EPSG:3857 and EPSG:3414
/// spatial references.
class CoordinateConverter {
  /// @nodoc
  final Dio _dio;

  CoordinateConverter(this._dio);

  /// Converts [latitude] and [longitude] from EPSG:4326 spatial reference
  /// to [CoordinateXY] in EPSG:3857 spatial reference.
  Future<CoordinateXY> from4326To3857(
      {@required double latitude, @required double longitude}) async {
    var response = await _dio.get('/commonapi/convert/4326to3857',
        queryParameters: {'latitude': latitude, 'longitude': longitude});
    return CoordinateXY.fromJson(response.data);
  }

  /// Converts [latitude] and [longitude] from EPSG:4326 spatial reference
  /// to [CoordinateXY] in EPSG:3414 spatial reference.
  Future<CoordinateXY> from4326To3414(
      {@required double latitude, @required double longitude}) async {
    var response = await _dio.get('/commonapi/convert/4326to3414',
        queryParameters: {'latitude': latitude, 'longitude': longitude});
    return CoordinateXY.fromJson(response.data);
  }

  /// Converts [x] and [y] from EPSG:3414 spatial reference
  /// to [CoordinateXY] in EPSG:3857 spatial reference.
  Future<CoordinateXY> from3414To3857(
      {@required double x, @required double y}) async {
    var response = await _dio.get('/commonapi/convert/3414to3857',
        queryParameters: {'X': x, 'Y': y});
    return CoordinateXY.fromJson(response.data);
  }

  /// Converts [x] and [y] from EPSG:3414 spatial reference
  /// to [CoordinateLatLong] in EPSG:4326 spatial reference.
  Future<CoordinateLatLong> from3414To4326(
      {@required double x, @required double y}) async {
    var response = await _dio.get('/commonapi/convert/3414to4326',
        queryParameters: {'X': x, 'Y': y});
    return CoordinateLatLong.fromJson(response.data);
  }

  /// Converts [x] and [y] from EPSG:3857 spatial reference
  /// to [CoordinateXY] in EPSG:3414 spatial reference.
  Future<CoordinateXY> from3857To3414(
      {@required double x, @required double y}) async {
    var response = await _dio.get('/commonapi/convert/3857to3414',
        queryParameters: {'X': x, 'Y': y});
    return CoordinateXY.fromJson(response.data);
  }

  /// Converts [x] and [y] from EPSG:3857 spatial reference
  /// to [CoordinateLatLong] in EPSG:4326 spatial reference.
  Future<CoordinateLatLong> from3857To4326(
      {@required double x, @required double y}) async {
    var response = await _dio.get('/commonapi/convert/3857to4326',
        queryParameters: {'X': x, 'Y': y});
    return CoordinateLatLong.fromJson(response.data);
  }
}
