import '../lib/index.dart' hide StreamsUtil;
import '../lib/src/OOP/task9.dart';

void main() {
  DecimalCounter counter = new DecimalCounter(min: -20, max: -35);
  counter.show();
  counter.increment();
  counter.show();
}