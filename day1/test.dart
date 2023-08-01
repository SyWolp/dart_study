void main () {
  int? number = null;
  double number2 = 1.1;
  String string = 'hi';
  bool isTrue = true;
  var all = '바뀔 수 있음';
  dynamic realAll = '진짜 다 바뀔 수 있음';

  const int isConst = 1;
  final isFinal = 'Final';

  final time = DateTime.now();

number ??= 40;

  List<int> arr = [ 1,2,3,4,5];
  Map<String, String> ob = {'hello': 'hi'};
  Set<int> setList = {1,2,3,45};
arr.add(2);
arr.remove(1);

  print(number is int);
  print(number2);
  print(string);
  print(isTrue);
  print(all);
  print(realAll);
  print(isConst);
  print(isFinal.runtimeType);
  print(time);
  print(arr);
  print(ob);
  print(setList);

// Type = add;
int result = testFn(1, 2, 3, add);

print(result);
}

typedef Type = int Function(int x, {required int y, required int z});

int add (int x, {required int y, required int z}) {
  return x + y + z;
}

int testFn (int x, int y, int z, Type type ) {
  return type(x, y: z, z: y);
}