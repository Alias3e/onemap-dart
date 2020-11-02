import 'dart:math';

import 'package:latlong/latlong.dart';
import 'package:polyline/polyline.dart';

/// Contains functions to decode encoded geometry string either according to
/// Google format of OneMap format.
///
/// https://docs.onemap.sg/#decoding-route_geometry
/// https://developers.google.com/maps/documentation/utilities/polylineutility
class GeometryDecoder {
  /// Decode the [encodedString] into a [List] of [LatLng] points representing the
  /// route.
  List<LatLng> decode({bool isPublicTransport, String encodedString}) {
    return isPublicTransport
        ? _decodePtGeometry(encodedString)
        : _decodeGeometry(encodedString);
  }

  /// Decode [encodedString] of that belongs to a public transport leg or route.
  List<LatLng> _decodePtGeometry(String encodedString) {
    // Use external library to help decode.
    Polyline polyline =
        Polyline.Decode(encodedString: encodedString, precision: 5);
    List<LatLng> latLongs = [];
    for (List<double> coords in polyline.decodedCoords) {
      latLongs.add(LatLng(coords[0], coords[1]));
    }
    return latLongs;
  }

  /// Decode [encodedString] of that belongs to a non public transport leg or route.
  List<LatLng> _decodeGeometry(String encodedString) {
    // According to algorithm posted on https://docs.onemap.sg/#decoding-route_geometry.
    List<LatLng> poly = new List<LatLng>();
    int index = 0;
    int len = encodedString.length;
    int lat = 0;
    int lng = 0;
    while (index < len) {
      int b;
      int shift = 0;
      int result = 0;
      do {
        b = (encodedString.codeUnitAt(index++) - 63);
        result |= ((b & 0x1f) << shift);
        shift += 5;
      } while (b >= 32);
      int dlat = (((result & 1) != 0) ? (~(result >> 1)) : (result >> 1));
      lat += dlat;
      shift = 0;
      result = 0;
      do {
        b = (encodedString.codeUnitAt(index++) - 63);
        result |= ((b & 0x1f) << shift);
        shift += 5;
      } while (b >= 0x20);
      int dlng = (((result & 1) != 0) ? (~(result >> 1)) : (result >> 1));
      lng += dlng;
      int latlength = ((log(lat) / ln10) + 1).toInt();
      double divider = (10 / pow(10, latlength));
      LatLng p = new LatLng(lat * divider, lng * divider);
      poly.add(p);
    }
    return poly;
  }
}
