import '../utils/index.dart' show StreamsUtil;
import '../helpers/index.dart' show StringsHelper;

class StringsTasks {
  static void task5() {
    String word = StreamsUtil.inputWithMessage('Enter a word: ');
    int centerIndex = StringsHelper.getCenterIndex(word);
    int lastIndex = StringsHelper.getLastIndex(word);
    print(word[0] + word[centerIndex] + word[lastIndex]);
  }

  static void task7() {
    String str1 = StreamsUtil.inputWithMessage('Enter first string: ');
    String str2 = StreamsUtil.inputWithMessage('Enter second string: ');
    int centerIndex = StringsHelper.getCenterIndex(str1);
    print(str1.substring(0, centerIndex) + str2 + str1.substring(centerIndex));
  }

  static void task8() {
    String word = StreamsUtil.inputWithMessage('Enter word: ');
    String result = word.length > 3 ? word.substring(3) : '';
    print(result);
  }
}