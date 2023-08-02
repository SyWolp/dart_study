void main() {
  Idol big = const Idol('blackpink', ['제니', '제니']);
  Idol big2 = const Idol('blackpink', ['제니', '제니']); // 두개가 같음 => 같은 인스턴스

//   Idol big = Idol('blackpink', ['제니', '제니']);
//   Idol big2 = Idol('blackpink', ['제니', '제니']); // 두개가 다름 => 다른 인스턴스

//   Idol big = const Idol('blackpink', ['제니', '제니']);
//   Idol big2 = const Idol('blackpink', ['제니퍼', '제니']); // 두개가 다름 => 같은 인스턴스
//   Idol test = Idol.fromList([
//     ['hello', 'hi'],
//     'myName'
//   ]); // => 네이밍 파람
  print(big == big2);
}

class Idol {
  final String name; // 바꿀 수 없음
  final List<String> members;

//   Idol(String name, List<String> members)
//       : this.name = name,
//         this.members = members;

  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];
  void sayHello() {
    print('Hello');
  }

  void introduce() {
    print('we are ${this.name} ${this.members.join(' ')}');
  }
}


// OOP => Object Oriented Programming
// why ? Class => Object 를 extends 한 거와 같음