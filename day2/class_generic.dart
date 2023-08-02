// generic - 타입을 외부에서 받을때 사용

void main() {
  Lecture<int, String> lec = Lecture(123, '가나다');
  Lecture<String, int> lec2 = Lecture('hello', 123);
  lec.isType();
  lec2.isType();
}

class Lecture<T, X> {
  // 외부에서 타입을 받아 옴
  final T id;
  final X name;

  Lecture(this.id, this.name);

  isType() {
    print(this.id.runtimeType);
    print(this.name.runtimeType);
  }
}
