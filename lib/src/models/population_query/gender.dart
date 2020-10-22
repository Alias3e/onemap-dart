/// To specify gender in population query APIs.
enum Gender { Male, Female }

/// Extension of enum to return enum as 'Male' instead of 'gender.Male'.
extension EnumToString on Gender {
  String asString() {
    return this == null ? this : this.toString().split('.').last;
  }
}
