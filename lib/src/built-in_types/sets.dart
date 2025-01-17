import '../utils/index.dart' show StreamsUtil;
import '../helpers/index.dart' show ListsHelper;

class SetsTasks {
  static void task9() {
    List<String> inputValues1 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list1 =
        ListsHelper.castTo(inputValues1, (string) => int.tryParse(string));
    List<String> inputValues2 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list2 =
        ListsHelper.castTo(inputValues2, (string) => int.tryParse(string));
    list1.addAll(list2);
    int result = Set<int>.from(list1).reduce((a, b) => a + b);
    print(result);    
  }

  static void task11() {
    List<String> inputValues1 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list1 =
        ListsHelper.castTo(inputValues1, (string) => int.tryParse(string));
    List<String> inputValues2 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list2 =
        ListsHelper.castTo(inputValues2, (string) => int.tryParse(string));
    Set<int> set = Set<int>.from(list1);
    set.removeAll(Set<int>.from(list2))      ;
    print(set.map((item) => item - 2));
  }

  static void task12() {
    List<String> inputValues1 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list1 =
        ListsHelper.castTo(inputValues1, (string) => int.tryParse(string));
    List<String> inputValues2 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list2 =
        ListsHelper.castTo(inputValues2, (string) => int.tryParse(string));
    Set<int> set = Set<int>.from(list1);
    set.removeAll(Set<int>.from(list2))      ;
    print(set.map((item) => item + 10));
  }

  static void task17() {
    List<String> inputValues1 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list1 =
        ListsHelper.castTo(inputValues1, (string) => int.tryParse(string));
    List<String> inputValues2 =
        StreamsUtil.inputListWithMessage('Enter a list of int numbers: ');
    List<int> list2 =
        ListsHelper.castTo(inputValues2, (string) => int.tryParse(string));
    Set<int> set = Set<int>.from(list1);
    set.removeAll(Set<int>.from(list2))      ;
    print(set.where((item) => item < 10));
  }
}