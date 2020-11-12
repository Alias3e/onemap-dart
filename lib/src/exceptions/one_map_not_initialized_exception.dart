/// Exception thrown when calling OneMap methods before initializing.
class OneMapNotInitializedException implements Exception {
  @override
  String toString() {
    return "Exception: OneMap not initialized. Please invoke OneMap.initialize().";
  }
}
