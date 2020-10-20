import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/planning_area_api/planning_area.dart';

main() {
  group('deserialization test', () {
    test('planning area deserialization test', () {
      var response = json.decode(r'['
          r'{'
          r'"pln_area_n":"SIMPANG",'
          r'"geojson":"{'
          r'\"type\": \"MultiPolygon\",'
          r'\"coordinates\": ['
          r'['
          r'['
          r'[103.784600507252,1.31108988325123],[103.784747790547,1.31097627716323],[103.784758958325,1.3109909606416],[103.784835733855,1.31108726066898],[103.784853223572,1.31111490562073],[103.784856300898,1.31112546503939],[103.78486435762,1.31115474218499],[103.784865991006,1.31116389257577],[103.784869117618,1.31118140384449],[103.784872226262,1.31119881834587],[103.784869606367,1.31123133019489]'
          r']'
          r']'
          r']'
          r'}"'
          r'}'
          r']');
      List<PlanningArea> areas =
          (response as List).map((i) => PlanningArea.fromJson(i)).toList();
      expect(areas.length, 1);
      expect(areas[0].planningAreaName, 'SIMPANG');
      expect(areas[0].geoJson['type'], 'MultiPolygon');
      expect(
          areas[0].geoJsonString,
          r'{'
          r'"type": "MultiPolygon",'
          r'"coordinates": ['
          r'['
          r'['
          r'[103.784600507252,1.31108988325123],[103.784747790547,1.31097627716323],[103.784758958325,1.3109909606416],[103.784835733855,1.31108726066898],[103.784853223572,1.31111490562073],[103.784856300898,1.31112546503939],[103.78486435762,1.31115474218499],[103.784865991006,1.31116389257577],[103.784869117618,1.31118140384449],[103.784872226262,1.31119881834587],[103.784869606367,1.31123133019489]'
          r']'
          r']'
          r']'
          r'}');
    });

    test('test deserialize planning area names', () {
      var response = json.decode(r'['
          r'{'
          r'"pln_area_n":"SIMPANG"'
          r'},'
          r'{'
          r'"pln_area_n":"SOUTHERN ISLANDS"'
          r'},'
          r'{'
          r'"pln_area_n":"SUNGEI KADUT"'
          r'}'
          r']');
      List<PlanningArea> areas =
          (response as List).map((i) => PlanningArea.fromJson(i)).toList();
      expect(areas.length, 3);
      expect(areas[1].planningAreaName, 'SOUTHERN ISLANDS');
    });
  });
}
