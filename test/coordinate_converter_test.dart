import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/coordinate_latlong.dart';
import 'package:onemapsg/src/models/coordinate_xy.dart';

void main() {
  group('converter deserialization test', () {
    test('deserialize CoordinateXY correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"Y":146924.54200324757,'
          r'"X":11559656.16256661'
          r'}');
      CoordinateXY coordinates = CoordinateXY.fromJson(response);
      expect(coordinates.x, 11559656.16256661);
      expect(coordinates.y, 146924.54200324757);
    });

    test('deserialize CoordinateLatLong correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"latitude":1.319728904999991,'
          r'"longitude":103.8421581'
          r'}');
      CoordinateLatLong latLong = CoordinateLatLong.fromJson(response);
      expect(latLong.latitude, 1.319728904999991);
      expect(latLong.longitude, 103.8421581);
    });
  });
}
