import 'dart:async';

void main() {
  // final controller = StreamController();
  // final stream = controller.stream.asBroadcastStream(); // 여러번 할 수 있게 함

  // final streamListener1 = stream.where((value) => value % 2 == 0).listen((val) {
  //   print('1 $val');
  // });

  // final streamListener2 = stream.where((value) => value % 2 != 0).listen((val) {
  //   print('2 $val');
  // });

  // controller.sink.add(9);
  // controller.sink.add(8);
  // controller.sink.add(7);
  // controller.sink.add(6);
  // controller.sink.add(5);
  // controller.sink.add(4);
  // controller.sink.add(3);
  // controller.sink.add(2);
  // controller.sink.add(1);

  // calculate(10).listen((value) {
  //   print('1 $value');
  // });
  // calculate(20).listen((value) {
  //   print('2 $value');
  // });

  playAll().listen((value) {
    print(value);
  });
}

Stream<int> playAll() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < number; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
