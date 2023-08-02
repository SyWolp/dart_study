void main() {
  print('--------------Test---------------');

  Idol big = Idol(name: 'big', memberCount: 4);
  Boy boys = Boy('boy', 8);
  Girl girls = Girl('girl', 3, 10);
  big.sayMembers();
  boys.sayMembers(); // 상속 됨
  girls.saySay();

  print(big is Idol); // true
  print(big is Boy); // false
  print(big is Girl); // false
  print('-----------------------------');
  print(boys is Idol); // true
  print(boys is Boy); // true
  print(boys is Girl); // false

  print('--------------Test End---------------');
}

// 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여 받음.

class Idol {
  String name;
  int memberCount;

  Idol({
    required this.name,
    required this.memberCount,
  });

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }

  void sayMembers() {
    print('${this.name} 에는 ${this.memberCount} 명 있습니다.');
  }
}

class Boy extends Idol {
  Boy(
    String name,
    int memberCount,
  ) : super(name: name, memberCount: memberCount);

  void sayBoy() {
    print('say Boy!! ${this.name}');
  }
}

class Girl extends Idol {
  final int count;
  Girl(
    String name,
    int memberCount,
    int this.count,
  ) : super(name: name, memberCount: memberCount);

  void saySay() {
    print('ㅎㅇ ${this.name} ${this.count}');
  }
}
