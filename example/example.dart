import 'package:onemapsg/onemapsg.dart';
import 'package:onemapsg/src/models/onemap_credentials.dart';
import 'package:onemapsg/src/models/search.dart';

Future<void> main() async {
  OneMap oneMap = OneMap();

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
}
