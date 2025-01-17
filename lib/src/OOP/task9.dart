import 'show_mixin.dart';

class DecimalCounter with ShowMixin {
  int _min = 3;
  int _max = 87;
  int _current = 86;
  int _addValue = 90;

  int get min => this._min;
  int get max => this._max;
  int get current => this._current;

  DecimalCounter({int? min, int? max}) {
    this._min = min ?? this._min;
    this._max = max ?? this._max;

    if (this._min > this._max){
      int temp = this._min;
      this._min = this._max;
      this._max = temp;
    } else if (this._min == this._max) {      
      ++this._max;
    }
    this._current = this._max - 1;
    this._addValue = (this._min.abs() - this._max.abs()).abs();
  }

  _transformValueIfNeeded() {
    bool isOver = this._current >= this._max;
    bool isUnder = this._current <= this._min;

    if (isOver || isUnder) {
      this._current = isOver ? this._current - this._addValue : this._current;
      this._current = isUnder ? this._current + this._addValue : this._current;
      print('Overflow, new value: $_current');
    }
  }

  void increment() {
    ++this._current;
    this._transformValueIfNeeded();
  }

  void decrement() {
    --this._current;
    this._transformValueIfNeeded();
  }

  @override
  String toString() {
    return 'DecimalCounter(CurrentValue: $_current, min: $_min, max: $_max)';
  }
}