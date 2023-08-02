// Future => 미래에 받아 올 값
void main() async {
  Future<String> name = Future.value('Hello');
  Future<int> number = Future.value(1);

  // 2개의 파라미터
  // delayed - (지연할 기간 Duration(), 지연 후 실행 함수);
  // print('시작');
  // Future.delayed(Duration(seconds: 2), () => print('딜레이 끝')); // js settimeout

  Future<void> add(int number1, int number2) async {
    print('start $number1 + $number2');
    await Future.delayed(Duration(seconds: 2), () => print(number1 + number2));
    print('end');
  }

  Future<int> add2(int number1, int number2) async {
    return number1 + number2;
  }

  await add(1, 3);
  print(await add2(54, 6));
  await add(4, 3);
  print(await add2(5, 6));
}
