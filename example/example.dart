import 'package:onemapsg/onemapsg.dart';
import 'package:onemapsg/src/models/onemap_theme/onemap_theme.dart';

String token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjAzMDM4NTg5LCJleHAiOjE2MDM0NzA1ODksIm5iZiI6MTYwMzAzODU4OSwianRpIjoiYjM1ZTNhYmQwYjQzYWFmNjM5ODQ1YzE2NWZhMWQ2NmMifQ.KU5pBDdC95eitl_H7ZNiWxlKW7x7K5JCkvZ5lFJbBxI';

Future<void> main() async {
  // Authenticate and retrieve token
  try {
    OneMapCredentials credentials =
        await OneMap.instance.authentication.getToken(email: '', password: '');
    if (credentials.accessToken.isNotEmpty) token = credentials.accessToken;
    print(credentials.accessToken);
  } catch (e) {
    print(e);
  }

//  restApiExample();
//  coordinateConverterExample();
//  themeExample();
  planningAreaExample();
}

void restApiExample() async {
  // Search for locations container "yishun"
  try {
    Search result = await OneMap.instance.restApi
        .search(searchVal: 'yishun', returnGeom: true, getAddrDetails: true);
    print(result);
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await OneMap.instance.restApi.reverseGeocodeXY(
        x: 33159.1597983748,
        y: 31783.4077108439,
        token: token,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print('end reverse geocodeXY');
    }
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await OneMap.instance.restApi.reverseGeocode(
        latitude: 1.3,
        longitude: 103.8,
        token: token,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print('end reverse geocode');
    }
  } catch (e) {
    print(e);
  }
}

void coordinateConverterExample() async {
  try {
    CoordinateXY coordinates = await OneMap.instance.coordinateConverter
        .from4326To3414(latitude: 1.319728905, longitude: 103.8421581);
    print(coordinates);
  } catch (e) {
    print(e);
  }

  try {
    CoordinateLatLong coordinates = await OneMap.instance.coordinateConverter
        .from3857To4326(x: 11559656.16256661, y: 146924.54200324757);
    print(coordinates);
  } catch (e) {
    print(e);
  }
}

void themeExample() async {
  try {
    Status status = await OneMap.instance.themes.checkThemeStatus(
        token: token, queryName: 'dengue_cluster', dateTime: DateTime.now());
    print(status.updatedFile);
  } catch (e) {
    print(e);
  }

  try {
    ThemeInfo info = await OneMap.instance.themes
        .getThemeInfo(token: token, queryName: 'kindergartens');
    print(info.themeNames[0].themeName);
    print(info.themeNames[0].queryName);
  } catch (e) {
    print(e);
  }

  try {
    ThemeInfo allInfo = await OneMap.instance.themes
        .getAllThemesInfo(token: token, moreInfo: true);
    print(allInfo.themeNames[0].themeName);
    print(allInfo.themeNames[0].queryName);
    print(allInfo.themeNames[0].category);
    print(allInfo.themeNames[0].icon);
    print(allInfo.themeNames[0].themeOwner);
  } catch (e) {
    print(e);
  }

  try {
    Themes themes = await OneMap.instance.themes.retrieveThemes(
      token: token,
      queryName: 'kindergartens',
      bottom: 1.291789,
      top: 1.3290461,
      left: 103.7796402,
      right: 103.8726032,
    );
    ThemeResultsOverview overview = themes.results[0];
    print(overview.featureCount);
    print(overview.themeName);

    print((themes.results[1] as ThemeResultsItem).name);
    print((themes.results[1] as ThemeResultsItem).description);
    print((themes.results[1] as ThemeResultsItem).address);
    print((themes.results[1] as ThemeResultsItem).postalCode);
    print((themes.results[1] as ThemeResultsItem).latLng);
  } catch (e) {
    print(e);
  }
}

void planningAreaExample() async {
  try {
    List<PlanningArea> planningArea =
        await OneMap.instance.planningArea.getPlanningAreasName(token: token);
    print(planningArea.length);
  } catch (e) {
    print(e);
  }

  try {
    List<PlanningArea> planningArea =
        await OneMap.instance.planningArea.getAllPlanningAreas(token: token);
    print(planningArea[28].planningAreaName);
    print(planningArea[28].geoJson['type']);
  } catch (e) {
    print(e);
  }

  try {
    List<PlanningArea> planningArea =
        await OneMap.instance.planningArea.getPlanningArea(
      token: token,
      longitude: 103.8,
      latitude: 1.3,
    );
    print(planningArea[0].planningAreaName);
    print(planningArea[0].geoJson['type']);
//    print(planningArea[0].geoJson['coordinates'][0]);
//    print(planningArea[0].geoJsonString);
  } catch (e) {
    print(e);
  }
}
