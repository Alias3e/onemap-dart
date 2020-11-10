/// This class contains static methods which override
/// json_serializable's fromJson and toJson methods.
class JsonTypeAdapter {
  /// Converts a String into an int.
  static int intFromString(String number) =>
      number == null ? null : int.parse(number);

  /// Converts String into a double.
  static double doubleFromString(String number) =>
      number == null ? null : double.parse(number);

  /// If null, return empty string.
  static String emptyFromNull(field) => field == null ? '' : field;

  /// If null, return 0
  static int zeroFromNull(field) => field == null ? 0 : field;
}
