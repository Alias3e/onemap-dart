/// This class contains static methods which override
/// json_serializable's fromJson and toJson methods.
class JsonTypeAdapter {
  /// Converts a String into an int.
  static int intFromString(String number) =>
      number == null ? null : int.parse(number);

  /// Converts int into a String.
  static String intToString(int number) => number?.toString();

  /// Converts String into a double.
  static double doubleFromString(String number) =>
      number == null ? null : double.parse(number);

  /// Converts double into a String.
  static String doubleToString(double number) => number?.toString();

  /// If null, return empty string.
  static String emptyFromNull(field) => field == null ? '' : field;

  /// Convert empty String into null.
  static String emptyToNull(String field) => field.isEmpty ? null : field;

  /// If null, return 0
  static int zeroFromNull(field) => field == null ? 0 : field;

  /// Convert 0 into null.
  static int nullToZero(int number) => number;
}
