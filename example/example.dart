import 'package:onemapsg/onemapsg.dart';

Future<void> main() async {
  OneMap oneMap = OneMap.instance;
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjAyNjAzOTE2LCJleHAiOjE2MDMwMzU5MTYsIm5iZiI6MTYwMjYwMzkxNiwianRpIjoiZWZkYzAwYmRiZWExNjUwMjEwMjAyMTE5ZTljNjAyNDQifQ.238alT_p5SqFvsAhmitjhFuhonM5nbMkWGzSFb86ABA';

  // Authenticate and retrieve token
  try {
    OneMapCredentials credentials =
        await oneMap.authentication.getToken(email: '', password: '');
    print(credentials.accessToken);
  } catch (e) {
    print(e);
  }

  // Search for locations container "yishun"
  try {
    Search result = await oneMap.restApi
        .search(searchVal: 'yishun', returnGeom: true, getAddrDetails: true);
    print(result);
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await oneMap.restApi.reverseGeocodeXY(
        x: 33159.1597983748,
        y: 31783.4077108439,
        token: token,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print(geocodeInfo.featureName);
      print('end reverse geocodeXY');
    }
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await oneMap.restApi.reverseGeocode(
        latitude: 1.3,
        longitude: 103.8,
        token: token,
        buffer: 10,
        addressType: AddressType.All,
        otherFeatures: true);
    for (GeocodeInfo geocodeInfo in geocode.geocodeInfos) {
      print(geocodeInfo.buildingName);
      print(geocodeInfo.road);
      print(geocodeInfo.featureName);
      print('end reverse geocode');
    }
  } catch (e) {
    print(e);
  }
}
