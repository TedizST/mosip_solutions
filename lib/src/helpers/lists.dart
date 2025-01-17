class ListsHelper {
  static List<T> castTo<T>(
      List<String> list, T? Function(String) parseFunction) {
    return list
        .map(parseFunction)
        .where((value) => value != null)
        .map((value) => value!)
        .toList();
  }
}