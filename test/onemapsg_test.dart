import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/onemap_credentials.dart';
import 'package:onemapsg/src/models/search.dart';

void main() {
  group('deserialization model tests', () {
    test('authenticate response deserialize correctly', () {
      Map<String, dynamic> response = json
          .decode(r'{"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.-w",'
              r'"expiry_timestamp":"1460794801"}');
      OneMapCredentials credentials = OneMapCredentials.fromJson(response);
      expect(
          credentials.accessToken, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.-w');
      expect(credentials.expiryTimestamp, 1460794801);
    });

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
  });
}
