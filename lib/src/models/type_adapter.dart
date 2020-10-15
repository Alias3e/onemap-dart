class JsonTypeAdapter {
  static int intFromString(String number) =>
      number == null ? null : int.parse(number);
  static String intToString(int number) => number?.toString();

  static double doubleFromString(String number) =>
      number == null ? null : double.parse(number);
  static String doubleToString(double number) => number?.toString();

  static String emptyFromNull(field) => field == null ? '' : field;
  static String emptyToNull(String field) => field.isEmpty ? null : field;
}
