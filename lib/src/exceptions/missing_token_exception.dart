/// Exception thrown when calling OneMap API without having acquire an access token.
class MissingTokenException implements Exception {
  String toString() {
    return "Exception: Token missing, authentication required for this API";
  }
}
