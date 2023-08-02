// interface => Class 의 형태를 정해줌
void main() {
  Boy boys = Boy('남자');
  Girl girls = Girl('여자');
  boys.sayName();
  girls.sayName();
  girls.say();

  print(boys is IdolInterface);
}

abstract class IdolInterface {
  // 추상화, 사용하지 못함
  String name;
  IdolInterface(this.name);

  void sayName(); // 메소드의 바디 불필요
}

class Boy implements IdolInterface {
  // interface 사용
  String name;
  Boy(this.name);

  void sayName() {
    print(this.name);
  }
}

class Girl implements IdolInterface {
  // interface 사용
  String name;
  Girl(this.name);

  void sayName() {
    print(this.name);
  }

  void say() {
    print('yo');
  }
}
