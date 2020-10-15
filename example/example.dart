import 'package:onemapsg/onemapsg.dart';
import 'package:onemapsg/src/models/geocode_info.dart';
import 'package:onemapsg/src/models/onemap_credentials.dart';
import 'package:onemapsg/src/models/reverse_geocode.dart';
import 'package:onemapsg/src/models/search.dart';

Future<void> main() async {
  OneMap oneMap = OneMap();
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjAyNjAzOTE2LCJleHAiOjE2MDMwMzU5MTYsIm5iZiI6MTYwMjYwMzkxNiwianRpIjoiZWZkYzAwYmRiZWExNjUwMjEwMjAyMTE5ZTljNjAyNDQifQ.238alT_p5SqFvsAhmitjhFuhonM5nbMkWGzSFb86ABA';

  // Authenticate and retrieve token
  try {
    OneMapCredentials credentials =
        await oneMap.authenticate(email: '', password: '');
  } catch (e) {
    print(e);
  }

  // Search for locations container "yishun"
  try {
    Search result = await oneMap.search(
        searchVal: 'yishun', returnGeom: true, getAddrDetails: true);
    print(result);
  } catch (e) {
    print(e);
  }

  try {
    ReverseGeocode geocode = await oneMap.reverseGeocodeXY(
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
    ReverseGeocode geocode = await oneMap.reverseGeocode(
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
