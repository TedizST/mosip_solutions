class StringsHelper {
  static int getCenterIndex(String str) {
    return ((str.length - 1) / 2).round();
  }

  static int getLastIndex(String str) {
    return str.length - 1;
  }
}