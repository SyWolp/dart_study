void main() {
  List<String> pink = ['빨강', '초록', '파랑'];

  print(pink.asMap());
  print(pink.toSet());

  Map<int, String> pinkMap = pink.asMap();
  // Set<String> pinkSet = pink.toSet();
  Set<String> pinkSet = Set.from(pink);

  print(pinkMap.values.toList());
  print(pinkSet.toList());

  final List<String> copyList = pink.map((e) {
    return '${e} hi';
  }).toList();

  print(copyList);
  String number = '13579';
  // string => list
  final List<String> numberJpg =
      number.split('').map((e) => '${e}.jpg').toList();

  print(numberJpg);

  final Map<String, String> harry = {
    'Harry': 'Potter',
    'Ron': 'Weasley',
  };
  // map => map
  Map<String, String> harryMap =
      harry.map((key, value) => MapEntry(value, key));

  Set<String> sett = {'하이', '바위', '보오'};

  final Set<String> newSet = sett.map((v) => '$v 헬로우').toSet();

  // List<Map<String, String>> aa = mapList.where((element) => element.containsValue('kang')).toList();
  // List<Map<String, String>> aa =
  //     mapList.where((element) => element['name'] == 'kang').toList();
  // print((aa));
  List<int> numbers = [1, 3, 5, 7, 9];
  final numbersResult = numbers.reduce((value, element) => value + element);
  print(numbersResult);
  List<String> strings = ['hi', 'my', 'name', 'is', 'kang'];
  final stringResult =
      strings.reduce((value, element) => value + ' ' + element);

  final stringLength = strings.fold<int>(0, (a, b) => a + b.length);
  print(stringLength);

  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];
  print([...even, ...odd]);

  final List<Map<String, dynamic>> mapList = [
    {'name': '신영', 'age': 24},
    {'name': '하영', 'age': 25},
    {'name': '구영', 'age': 50},
    {'name': '지영', 'age': 14}
  ];

  final parsePerson =
      mapList.map((e) => Person(name: e['name']!, age: e['age']!)).toList();

  for (Person person in parsePerson) {
    print(person.name);
  }

  final names = parsePerson.where((element) => element.name == '신영');

  print(names);
}

class Person {
  String name;
  dynamic age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'Person(name:${this.name}, age:${this.age})';
  }
}
