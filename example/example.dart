import 'package:onemapsg/onemapsg.dart';

String token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjAyNjAzOTE2LCJleHAiOjE2MDMwMzU5MTYsIm5iZiI6MTYwMjYwMzkxNiwianRpIjoiZWZkYzAwYmRiZWExNjUwMjEwMjAyMTE5ZTljNjAyNDQifQ.238alT_p5SqFvsAhmitjhFuhonM5nbMkWGzSFb86ABA';

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

  restApiExample();
  coordinateConverterExample();
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
