import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/models.dart';

void main() {
  test('authenticate response deserialize correctly', () {
    Map<String, dynamic> response = json
        .decode(r'{"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.-w",'
            r'"expiry_timestamp":"1460794801"}');
    OneMapCredentials credentials = OneMapCredentials.fromJson(response);
    expect(credentials.accessToken, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.-w');
    expect(credentials.expiryTimestamp, 1460794801);
  });
}
