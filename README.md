# OneMap Plugin for Flutter

[OneMap](https://www.onemap.sg/home/) is the authoritative national map of Singapore with the most detailed and timely updated information developed by the Singapore Land Authority. There are also many useful day-to-day information and services contributed by government agencies.

## Simple example
An example with authentication.

```dart
// Initialize a new OneMap object, pass in cached accessToken if available.
OneMap.initialize(accessToken: token);

// Get singleton instance.
oneMap = OneMap.instance;

// Authenticate and get access token.
try {
    // Some api such as search does not require access token, check OneMap
    // documentation for more details.
    Search result = await oneMap.restApi
        .search(searchVal: 'suntec', returnGeom: true, getAddrDetails: true);

    // Get access token.
    OneMapCredentials credentials =
        await oneMap.authentication.getToken(email: 'youremail', password: 'yourpassword');

    // Cache accessToken if needed here, expiry timestamp is included.
    print(credentials.accessToken);

    // After authentication, private APIs can be called.
    ReverseGeocode geocode = await oneMap.restApi.reverseGeocodeXY(
        x: 33159.1597983748,
        y: 31783.4077108439,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
    }

    ThemeInfo info =
        await oneMap.themes.getThemeInfo(queryName: 'kindergartens');
    print(info.themeNames[0].themeName);
  } catch (_) {
    // Handle errors here.
  }
}
```

## Population query and planning areas
Population query are divided into various planning areas. This list can be
retreived from calling getPlanningAreasName API.

```dart
// Retrieve all planning areas.
List<PlanningArea> planningArea =
        await oneMap.planningArea.getPlanningAreasName();

Industry data = await oneMap.populationQuery.industry(
      year: 2010,
      planningArea: planningArea[0].planningAreaName,
    );
```

## Routing and route geometry
OneMap API encode its route geometry into a polyline string. Built in getter
decodes the string into a list of [LatLng](https://pub.dev/packages/latlng) objects.

``` dart
Route route = await oneMap.routing.getRoute(
  start: LatLng(1.319728, 103.8421),
  end: LatLng(1.315728905, 103.8121581),
  routeType: RouteType.cycle,
);

// Decoded
List<LatLng> points = route.routeGeometry;
// Encoded string
String geometry = route.encodedRouteGeometry;

```

For public transport route
```dart
PublicTransportRoute ptRoute = await oneMap.routing.getPublicTransportRoute(
    start: LatLng(1.320981, 103.844150),
    end: LatLng(1.326762, 103.8559),
    dateTime: DateTime.now(),
    mode: Mode.TRANSIT);

// Decoded
List<LatLng> points = ptRoute.plan.itineraries[0].legs[0].legGeometry;
// Encoded string
String geometry = ptRoute.plan.itineraries[0].legs[0].encodedLegGeometry.points;
```

## Handling exceptions
Plugin uses [dio](https://pub.dev/packages/dio) to perform http requests.
Following is an example on handling http exceptions thrown by dio.

The plugin will also throw a MissingTokenException if an api requiring token is
called but user have not authenticated.

```dart
...
} on DioError catch(e) {
  print(e.message);
} on MissingTokenException catch(e) {
  print(e);
} catch(_) {
  // other exceptions
}

```
