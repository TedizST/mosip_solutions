import '../utils/index.dart' show StreamsUtil;
import '../helpers/index.dart' show ListsHelper;

class ListsTasks {
  static void task4() {
    List<String> inputValues =
        StreamsUtil.inputListWithMessage('Enter a list of double numbers: ');
    double? a =
        double.tryParse(StreamsUtil.inputWithMessage('Enter double number: '));
    int? b =
        int.tryParse(StreamsUtil.inputWithMessage('Enter index of list: '));

    List<double> list =
        ListsHelper.castTo(inputValues, (string) => double.tryParse(string));
    (a != null && b != null && b <= list.length - 1) ? list.insert(b, a) : null;
    print(list);
  }

  static void task5() {
    List<String> inputValues =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list =
        ListsHelper.castTo(inputValues, (string) => int.tryParse(string));
    int? a = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a number to delete: '));

    (a != null) ? list = list.where((number) => number != a).toList() : null;
    print(list);
  }

  static void task6() {
    List<String> inputValues =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list =
        ListsHelper.castTo(inputValues, (string) => int.tryParse(string));
    int? a = int.tryParse(
        StreamsUtil.inputWithMessage('Enter a number to count: '));
    (a != null) ? list = list.where((number) => number == a).toList() : null;
    print(list.length);
  }

  static void task12() {
    List<String> inputValues =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list =
        ListsHelper.castTo(inputValues, (string) => double.tryParse(string)?.round());
    print(list);
  }
}
