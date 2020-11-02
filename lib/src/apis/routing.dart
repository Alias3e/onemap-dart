import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:latlong/latlong.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/models/routing/routing.dart';

/// API to find different routes between 2 points using various mode of transport.
class Routing {
  final Dio _dio;

  Routing(this._dio);

  ///
  /// Calculates the distance and returns the drawn path between the specified
  /// [start] and [end] values depending on the [routeType].
  /// https://docs.onemap.sg/#route
  ///
  /// * [start] point of the journey in [LatLng].
  /// * [end] point of journey in [LatLng].
  /// * [routeType] could be [RouteType.walk], [RouteType.cycle] or [RouteType.drive].
  /// * [token] is retrieved using [Authentication.getToken]
  Future<Route> getRoute({
    @required LatLng start,
    @required LatLng end,
    @required RouteType routeType,
    @required String token,
  }) async {
    var result = await _dio.get(
      '/privateapi/routingsvc/route',
      queryParameters: {
        'start': '${start.latitude},${start.longitude}',
        'end': '${end.latitude},${end.longitude}',
        'routeType': routeType.asString(),
        'token': token
      },
    );

    return Route.fromJson(result.data);
  }

  ///
  /// Finds a route via public transportation from [start] point to [end] destination.
  /// https://docs.onemap.sg/#route
  ///
  /// * [start] point of the journey in [LatLng].
  /// * [end] point of journey in [LatLng].
  /// * [token] is retrieved using [Authentication.getToken]
  /// * [dateTime] indicates the starting time of the journey.
  /// * [mode] of transport. [Mode.RAIL], [Mode.BUS] or [Mode.TRANSIT].
  /// * [maxWalkDistance] is the maximum walking distance in meters allowed for the route.
  /// * [numItineraries] indicates the number of routes returned.
  Future<PublicTransportRoute> getPublicTransportRoute({
    @required LatLng start,
    @required LatLng end,
    @required String token,
    @required DateTime dateTime,
    @required Mode mode,
    int maxWalkDistance,
    int numItineraries,
  }) async {
    String date = DateFormat('y-MM-dd').format(dateTime);
    String time = DateFormat('HH:mm:ss').format(dateTime);
    Map<String, dynamic> params = {
      'start': '${start.latitude},${start.longitude}',
      'end': '${end.latitude},${end.longitude}',
      'routeType': 'pt',
      'token': token,
      'date': date,
      'time': time,
      'mode': mode.asString(),
    };

    if (maxWalkDistance != null) {
      params.putIfAbsent('maxWalkDistance', () => maxWalkDistance);
    }

    if (numItineraries != null) {
      params.putIfAbsent('numItineraries', () => maxWalkDistance);
    }

    var result =
        await _dio.get('/privateapi/routingsvc/route', queryParameters: params);

    return PublicTransportRoute.fromJson(result.data);
  }
}
