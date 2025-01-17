class MapsHelper {
  static Map<T, T> compare<T>(List<T> keys, List<T> values) {
    int maxLen = keys.length <= values.length ? keys.length : values.length;
    keys = keys.sublist(0, maxLen);
    values = values.sublist(0, maxLen);
    return Map.fromIterables(keys, values);
  }
}