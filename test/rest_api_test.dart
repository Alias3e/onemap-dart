import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/models.dart';

void main() {
  group('OneMap REST API deserialization tests', () {
    test('search response deserialize correctly', () {
      //this json to map conversion was done by dio library
      Map<String, dynamic> response = json.decode(r'{"found":5,'
          r'"totalNumPages":1,'
          r'"pageNum":1,'
          r'"results":[{'
          r'"SEARCHVAL":"INLAND REVENUE AUTHORITY OF SINGAPORE (IRAS)",'
          r'"BLK_NO":"55",'
          r'"ROAD_NAME":"NEWTON ROAD",'
          r'"BUILDING":"INLAND REVENUE AUTHORITY OF SINGAPORE (IRAS)",'
          r'"ADDRESS":"55 NEWTON ROAD, SINGAPORE 307987",'
          r'"POSTAL":"307987",'
          r'"X":"28983.7537272647",'
          r'"Y":"33554.4361084122",'
          r'"LATITUDE":"1.31972890510723",'
          r'"LONGITUDE":"103.842158118267",'
          r'"LONGTITUDE":"103.842158118267"'
          r'},'
          r'{"SEARCHVAL":"REVENUE HOUSE",'
          r'"BLK_NO":"55",'
          r'"ROAD_NAME":"NEWTON ROAD",'
          r'"BUILDING":"REVENUE HOUSE",'
          r'"ADDRESS":"55 NEWTON ROAD, SINGAPORE 307987",'
          r'"POSTAL":"307987",'
          r'"X":"28977.8507137401",'
          r'"Y":"33547.5712691676",'
          r'"LATITUDE":"1.31966682211667",'
          r'"LONGITUDE":"103.842105076401",'
          r'"LONGTITUDE":"103.842105076401"}]}');
      Search search = Search.fromJson(response);

      // test Search
      expect(search.found, 5);
      expect(search.pageNum, 1);
      expect(search.totalNumPages, 1);
      expect(search.results.length, 2);

      // test SearchResult
      expect(search.results[0].searchValue,
          'INLAND REVENUE AUTHORITY OF SINGAPORE (IRAS)');
      expect(search.results[0].blockNumber, '55');
      expect(search.results[0].roadName, 'NEWTON ROAD');
      expect(search.results[0].building,
          'INLAND REVENUE AUTHORITY OF SINGAPORE (IRAS)');
      expect(search.results[0].address, '55 NEWTON ROAD, SINGAPORE 307987');
      expect(search.results[0].postal, '307987');
      expect(search.results[0].x, 28983.7537272647);
      expect(search.results[0].y, 33554.4361084122);
      expect(search.results[0].latitude, 1.31972890510723);
      expect(search.results[0].longitude, 103.842158118267);
    });

    test('empty search deserialize correct', () {
      Map<String, dynamic> response = json.decode(r'{"found":0,'
          r'"totalNumPages":1,'
          r'"pageNum":1,'
          r'"results":[]}');
      Search search = Search.fromJson(response);
      expect(search.found, 0);
      expect(search.pageNum, 1);
      expect(search.totalNumPages, 1);
      expect(search.results.length, 0);
    });

    test('reverse geocode deserialize correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"GeocodeInfo":'
          r'['
          r'{"BUILDINGNAME":"NEW TOWN PRIMARY SCHOOL",'
          r'"BLOCK":"300",'
          r'"ROAD":"TANGLIN HALT ROAD",'
          r'"POSTALCODE":"148812",'
          r'"XCOORD":"24303.327416",'
          r'"YCOORD":"31333.331116",'
          r'"LATITUDE":"1.2996418106402365",'
          r'"LONGITUDE":"103.80011086725216",'
          r'"LONGTITUDE":"103.80011086725216"'
          r'},'
          r'{'
          r'"ROAD":"STADIUM WALK",'
          r'"XCOORD":"32964.401642579214",'
          r'"YCOORD":"31636.744777400974",'
          r'"LATITUDE":"1.3023856",'
          r'"LONGITUDE":"103.8779260",'
          r'"LONGTITUDE":"103.8779260"'
          r'},'
          r'{'
          r'"FEATURE_NAME":"KALLANG FIELDS",'
          r'"XCOORD":"33159.1597983748",'
          r'"YCOORD":"31783.4077108439",'
          r'"LATITUDE":"1.3037119357111573",'
          r'"LONGITUDE":"103.87967601502585",'
          r'"LONGTITUDE":"103.87967601502585"'
          r'}'
          r']}');
      ReverseGeocode reverseGeocode = ReverseGeocode.fromJson(response);
      expect(reverseGeocode.geocodeInfos.length, 3);

      // building, first item in json.
      expect(reverseGeocode.geocodeInfos[0].buildingName,
          'NEW TOWN PRIMARY SCHOOL');
      expect(reverseGeocode.geocodeInfos[0].featureName, '');
      expect(reverseGeocode.geocodeInfos[0].block, '300');
      expect(reverseGeocode.geocodeInfos[0].road, 'TANGLIN HALT ROAD');
      expect(reverseGeocode.geocodeInfos[0].postalCode, '148812');
      expect(reverseGeocode.geocodeInfos[0].x, 24303.327416);
      expect(reverseGeocode.geocodeInfos[0].y, 31333.331116);
      expect(reverseGeocode.geocodeInfos[0].latitude, 1.2996418106402365);
      expect(reverseGeocode.geocodeInfos[0].longitude, 103.80011086725216);

      // road, second item in json
      expect(reverseGeocode.geocodeInfos[1].buildingName, '');
      expect(reverseGeocode.geocodeInfos[1].featureName, '');
      expect(reverseGeocode.geocodeInfos[1].block, '');
      expect(reverseGeocode.geocodeInfos[1].road, 'STADIUM WALK');
      expect(reverseGeocode.geocodeInfos[1].postalCode, '');
      expect(reverseGeocode.geocodeInfos[1].x, 32964.401642579214);
      expect(reverseGeocode.geocodeInfos[1].y, 31636.744777400974);
      expect(reverseGeocode.geocodeInfos[1].latitude, 1.3023856);
      expect(reverseGeocode.geocodeInfos[1].longitude, 103.8779260);

      // feature, third item in json
      expect(reverseGeocode.geocodeInfos[2].buildingName, '');
      expect(reverseGeocode.geocodeInfos[2].featureName, 'KALLANG FIELDS');
      expect(reverseGeocode.geocodeInfos[2].block, '');
      expect(reverseGeocode.geocodeInfos[2].road, '');
      expect(reverseGeocode.geocodeInfos[2].postalCode, '');
      expect(reverseGeocode.geocodeInfos[2].x, 33159.1597983748);
      expect(reverseGeocode.geocodeInfos[2].y, 31783.4077108439);
      expect(reverseGeocode.geocodeInfos[2].latitude, 1.3037119357111573);
      expect(reverseGeocode.geocodeInfos[2].longitude, 103.87967601502585);
    });
  });
}
