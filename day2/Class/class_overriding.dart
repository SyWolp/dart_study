// override => 덮어쓰다 (우선시하다)
void main() {
  TimesTwo tt = TimesTwo(2);
  TimesFour tf = TimesFour(4);
  print(tt.calculate());
  print(tf.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return this.number * 3;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);

  @override
  int calculate() {
    // return super.number * 3;
    return super.calculate() * 2;
  }
}
