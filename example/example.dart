import 'package:dio/dio.dart';
import 'package:latlong/latlong.dart';
import 'package:onemapsg/onemapsg.dart';

String token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjA0NTU5NjEwLCJleHAiOjE2MDQ5OTE2MTAsIm5iZiI6MTYwNDU1OTYxMCwianRpIjoiY2Y5MzZhYWE5YjExYThjMTQ2ODI1MTJlYTU3ZDkwZDcifQ.USyyrjxY-ypmPo06yfIG037Jpe5O2FUbSHbnyVvwCZc';
OneMap oneMap;

Future<void> main() async {
  OneMap.initialize(accessToken: token);
  // Get singleton instance.
  oneMap = OneMap.instance;

  // Authenticate and retrieve token
  if (oneMap.authentication.accessToken.isEmpty) {
    try {
      OneMapCredentials credentials =
          await oneMap.authentication.getToken(email: '', password: '');
      // Cache accessToken if needed here, expiry timestamp is included.
      print(credentials.accessToken);
      print(credentials.expiry);
    } catch (e) {
      print(e);
    }
  }

  restApiExample();
  coordinateConverterExample();
  themeExample();
  planningAreaExample();
  routingExample();
}

void restApiExample() async {
  // Search for locations container "yishun"
  try {
    Search result = await oneMap.restApi
        .search(searchVal: 'yishun', returnGeom: true, getAddrDetails: true);
    print(result.results.length);
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await oneMap.restApi.reverseGeocodeXY(
        x: 33159.1597983748,
        y: 31783.4077108439,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print('end reverse geocodeXY');
    }
  } on DioError catch (e) {
    print(e);
  } on MissingTokenException catch (e) {
    // Perform authentication here
    print(e);
  }

  try {
    ReverseGeocode geocode = await oneMap.restApi.reverseGeocode(
        latitude: 1.3,
        longitude: 103.8,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print('end reverse geocode');
    }
  } on DioError catch (e) {
    print(e);
  } on MissingTokenException catch (e) {
    // Perform authentication here
    print(e);
  }
}

void coordinateConverterExample() async {
  try {
    CoordinateXY coordinates = await oneMap.coordinateConverter
        .from4326To3414(latitude: 1.319728905, longitude: 103.8421581);
    print(coordinates);
  } catch (e) {
    print(e);
  }

  try {
    CoordinateLatLong coordinates = await oneMap.coordinateConverter
        .from3857To4326(x: 11559656.16256661, y: 146924.54200324757);
    print(coordinates);
  } catch (e) {
    print(e);
  }
}

void themeExample() async {
  try {
    Status status = await oneMap.themes.checkThemeStatus(
        queryName: 'dengue_cluster', dateTime: DateTime.now());
    print(status.updatedFile);
  } catch (e) {
    print(e);
  }

  try {
    ThemeInfo info =
        await oneMap.themes.getThemeInfo(queryName: 'kindergartens');
    print(info.themeNames[0].themeName);
    print(info.themeNames[0].queryName);
  } catch (e) {
    print(e);
  }

  try {
    ThemeInfo allInfo = await oneMap.themes.getAllThemesInfo(moreInfo: true);
    print(allInfo.themeNames[0].themeName);
    print(allInfo.themeNames[0].queryName);
    print(allInfo.themeNames[0].category);
    print(allInfo.themeNames[0].icon);
    print(allInfo.themeNames[0].themeOwner);
  } catch (e) {
    print(e);
  }

  try {
    Themes themes = await oneMap.themes.retrieveThemes(
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
        await oneMap.planningArea.getPlanningAreasName();
    print(planningArea[0].planningAreaName);
  } catch (e) {
    print(e);
  }

  try {
    List<PlanningArea> planningArea =
        await oneMap.planningArea.getAllPlanningAreas();
    print(planningArea[28].planningAreaName);
    print(planningArea[28].geoJson['type']);
  } catch (e) {
    print(e);
  }

  try {
    List<PlanningArea> planningArea = await oneMap.planningArea.getPlanningArea(
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

void routingExample() async {
  try {
    Route route = await oneMap.routing.getRoute(
      start: LatLng(1.319728, 103.8421),
      end: LatLng(1.319728905, 103.8421581),
      routeType: RouteType.walk,
    );

    print(route.subtitle);
    print(route.routeNames);
    print(route.routeGeometry);
  } on MissingTokenException catch (e) {
    // perform authentication here
    print(e);
  } catch (e) {
    print(e);
  }

  try {
    Route route = await oneMap.routing.getRoute(
      start: LatLng(1.319728, 103.8421),
      end: LatLng(1.315728905, 103.8121581),
      routeType: RouteType.drive,
    );

    print(route.subtitle);
    print(route.routeNames);
    print(route.routeGeometry);
  } on MissingTokenException catch (e) {
    // perform authentication here
    print(e);
  } catch (e) {
    print(e);
  }

  try {
    Route route = await oneMap.routing.getRoute(
      start: LatLng(1.319728, 103.8421),
      end: LatLng(1.315728905, 103.8121581),
      routeType: RouteType.cycle,
    );

    print(route.subtitle);
    print(route.routeNames);
    print(route.routeGeometry);
    print(route.encodedRouteGeometry);
  } on MissingTokenException catch (e) {
    // perform authentication here
    print(e);
  } catch (e) {
    print(e);
  }

  try {
    PublicTransportRoute ptRoute = await oneMap.routing.getPublicTransportRoute(
        start: LatLng(1.320981, 103.844150),
        end: LatLng(1.326762, 103.8559),
        dateTime: DateTime.now(),
        mode: Mode.TRANSIT);

    print(ptRoute.plan.itineraries.length);
    print(ptRoute.plan.itineraries[0].duration);
    print(ptRoute.plan.itineraries[0].legs[0].legGeometry);
    print(ptRoute.plan.itineraries[0].legs[0].encodedLegGeometry.points);
  } on DioError catch (e) {
    print(e);
    print(e.request.queryParameters);
    print(e.request.uri);
  } on MissingTokenException catch (e) {
    // perform authentication here
    print(e);
  }
}
