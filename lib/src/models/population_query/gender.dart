/// To specify gender in population query APIs.
enum Gender { Male, Female }

/// Extension of enum to return enum as 'Male' instead of 'gender.Male'.
extension EnumToString on Gender {
  /// Gets a [String] equivalent to the enum value.
  String asString() {
    return this == null ? this : this.toString().split('.').last;
  }
}
