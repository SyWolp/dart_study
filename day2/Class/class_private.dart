void main() {
  _Idol private = _Idol('name', ['members', 'memberss']);
  // 밖에서 사용할 수 없음.
}

class _Idol {
  // private 외부에서 불러올 수 없음.
  final String name; // 바꿀 수 없음
  final List<String> members;

//   Idol(String name, List<String> members)
//       : this.name = name,
//         this.members = members;

  const _Idol(this.name, this.members);

  _Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];
  void sayHello() {
    print('Hello');
  }

  void introduce() {
    print('we are ${this.name} ${this.members.join(' ')}');
  }
}
