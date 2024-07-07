extension NullableStringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";

}
extension StringExtension on String{
  String cleanJson() {
    if (contains('```')) {
      final withoutLeading = split('```json').last;
      final withoutTrailing = withoutLeading.split('```').first;
      return withoutTrailing;
    }
    return this;
  }
}