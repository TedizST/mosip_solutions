import 'dart:io';

class StreamsUtil {
  static String inputWithMessage(String msg) {
    print(msg);
    String? input = stdin.readLineSync() ?? '';
    input = input.isEmpty ? 'Default' : input;
  
    return input.trim();
  }
  static List<String> inputListWithMessage(String msg) {
    print(msg);
    String? input = stdin.readLineSync();
    return input!.split(' ');
  }
}