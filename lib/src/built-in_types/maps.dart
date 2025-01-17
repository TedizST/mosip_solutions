import '../utils/index.dart' show StreamsUtil;
import '../helpers/index.dart' show ListsHelper, MapsHelper;

class MapsTasks {
  static void task3() {
    List<String> keys =
        StreamsUtil.inputListWithMessage('Enter a list of keys: ');
    List<int> parsedKeys =
        ListsHelper.castTo(keys, (string) => int.tryParse(string));
    List<String> values =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> parsedValues =
        ListsHelper.castTo(values, (string) => int.tryParse(string));

    int? key = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a key to find: '));
    int? value = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a value to find: '));

    var map = MapsHelper.compare(parsedKeys, parsedValues);
    print('${key} ${map.containsKey(key) ? 'exists' : 'does not exist'}, ${value} ${map.containsValue(value) ? 'exists' : 'does not exist'}');    
  }

  static void task4() {
    List<String> keys =
        StreamsUtil.inputListWithMessage('Enter a list of keys: ');
    List<int> parsedKeys =
        ListsHelper.castTo(keys, (string) => int.tryParse(string));
    List<String> values =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> parsedValues =
        ListsHelper.castTo(values, (string) => int.tryParse(string));

    int? key = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a key: ')) ?? 0;
    int? value = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a value: ')) ?? 0;
        
    var map = MapsHelper.compare(parsedKeys, parsedValues);
    map.putIfAbsent(key, () => value);
    print(map);
    print('${key}: ${value}');
  }

  static void task9() {
    List<String> keys =
        StreamsUtil.inputListWithMessage('Enter a list of keys: ');
    List<int> parsedKeys =
        ListsHelper.castTo(keys, (string) => int.tryParse(string));
    List<String> values =
        StreamsUtil.inputListWithMessage('Enter a list of string values: ');

    var str = StreamsUtil.inputWithMessage('Enter a string: ');    
    var map = MapsHelper.compare(parsedKeys, values);
    map.removeWhere((key, value) => value.toString().endsWith(str));
    print(map);
  }
}