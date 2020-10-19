import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/onemap_theme/onemap_theme.dart';
import 'package:onemapsg/src/models/onemap_theme/themes.dart';

main() {
  group('theme api tests', () {
    test('theme status deserialize correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"UpdatedFile":false'
          r'}');
      Status status = Status.fromJson(response);
      expect(status.updatedFile, false);
    });

    test('theme names deserialize correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"Theme_Names":['
          r'{'
          r'"THEMENAME":"PA Headquarters",'
          r'"QUERYNAME":"paheadquarters"'
          r'},'
          r'{'
          r'"THEMENAME":"After Death Facilities",'
          r'"QUERYNAME":"afterdeathfacilities"'
          r'},'
          r'{'
          r'"THEMENAME":"WaterActivities@SG",'
          r'"QUERYNAME":"aquaticsg"'
          r'},'
          r'{'
          r'"THEMENAME":"AXS Express Top Up",'
          r'"QUERYNAME":"axs_express_topup"'
          r'},'
          r'{'
          r'"THEMENAME":"Bloodbank locations",'
          r'"QUERYNAME":"blood_bank"'
          r'}'
          r']'
          r'}');
      ThemeInfo info = ThemeInfo.fromJson(response);
      expect(info.themeNames.length, 5);
      expect(info.themeNames[0].themeName, 'PA Headquarters');
      expect(info.themeNames[0].queryName, 'paheadquarters');
      expect(info.themeNames[1].themeName, 'After Death Facilities');
      expect(info.themeNames[1].queryName, 'afterdeathfacilities');
      expect(info.themeNames[2].themeName, 'WaterActivities@SG');
      expect(info.themeNames[2].queryName, 'aquaticsg');
      expect(info.themeNames[3].themeName, 'AXS Express Top Up');
      expect(info.themeNames[3].queryName, 'axs_express_topup');
      expect(info.themeNames[4].themeName, 'Bloodbank locations');
      expect(info.themeNames[4].queryName, 'blood_bank');
    });

    test('retrieve themes deserialize correctly', () {
      Map<String, dynamic> response = json.decode(r'{'
          r'"SrchResults":['
          r'{'
          r'"FeatCount":59,'
          r'"Theme_Name":"Kindergartens",'
          r'"Category":"Education",'
          r'"Owner":"MINISTRY OF EDUCATION",'
          r'"DateTime":{"date":"2017-03-08 23:00:04.254000","timezone_type":1,"timezone":"+00:00"}'
          r'},'
          r'{'
          r'"NAME":"JHS Montessori Kindergarten",'
          r'"DESCRIPTION":"Kindergartens",'
          r'"ADDRESSPOSTALCODE":"248373",'
          r'"ADDRESSSTREETNAME":"491B River Valley Road #02-01 Valley Point Tower",'
          r'"LatLng":"1.29307225899878,103.827075942185",'
          r'"ICON_NAME":"school.gif"'
          r'},'
          r'{'
          r'"NAME":"Kim Keat Christian Church Kindergarten",'
          r'"DESCRIPTION":"Kindergartens",'
          r'"ADDRESSPOSTALCODE":"339843",'
          r'"ADDRESSSTREETNAME":"11 Beng Wan Road",'
          r'"LatLng":"1.32441878302634,103.865899487598",'
          r'"ICON_NAME":"school.gif"'
          r'}'
          r']'
          r'}');

      Themes themes = Themes.fromJson(response);
      expect(themes.results.length, 3);
      expect(themes.results[0], isA<ThemeResultsOverview>());
      expect(themes.results[1], isA<ThemeResultsItem>());
      expect(themes.results[2], isA<ThemeResultsItem>());

      ThemeResultsOverview overview = themes.results[0];
      expect(overview.featureCount, 59);
      expect(overview.themeName, 'Kindergartens');
      expect(overview.category, 'Education');
      expect(overview.owner, 'MINISTRY OF EDUCATION');
      expect(overview.dateTime.dateString, '2017-03-08 23:00:04.254000');
      expect(overview.dateTime.timezone, '+00:00');
      expect(overview.dateTime.timezoneType, 1);
      expect(overview.dateTime.dateTime.year, 2017);
      expect(overview.dateTime.dateTime.day, 8);
      expect(overview.dateTime.dateTime.month, 3);
      expect(overview.dateTime.dateTime.hour, 23);
      expect(overview.dateTime.dateTime.minute, 0);
      expect(overview.dateTime.dateTime.second, 4);
      expect(overview.dateTime.dateTime.millisecond, 254);
      expect(overview.dateTime.dateTime.microsecond, 000);

      ThemeResultsItem resultOne = themes.results[1];
      expect(resultOne.name, 'JHS Montessori Kindergarten');
      expect(resultOne.description, 'Kindergartens');
      expect(resultOne.postalCode, '248373');
      expect(resultOne.address,
          '491B River Valley Road #02-01 Valley Point Tower');
      expect(resultOne.latLongString, '1.29307225899878,103.827075942185');
      expect(resultOne.latLng.latitude, 1.29307225899878);
      expect(resultOne.latLng.longitude, 103.827075942185);
      expect(resultOne.iconName, 'school.gif');

      ThemeResultsItem resultTwo = themes.results[2];
      expect(resultTwo.name, 'Kim Keat Christian Church Kindergarten');
      expect(resultTwo.description, 'Kindergartens');
      expect(resultTwo.postalCode, '339843');
      expect(resultTwo.address, '11 Beng Wan Road');
      expect(resultTwo.latLongString, '1.32441878302634,103.865899487598');
      expect(resultTwo.latLng.latitude, 1.32441878302634);
      expect(resultTwo.latLng.longitude, 103.865899487598);
      expect(resultTwo.iconName, 'school.gif');
    });
  });
}
