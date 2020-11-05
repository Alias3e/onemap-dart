class MissingTokenException implements Exception {
  String toString() {
    return "Exception: Token missing, authentication required for this API";
  }
}
