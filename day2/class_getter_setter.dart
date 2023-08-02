void main() {}

class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];
  void sayHello() {
    print('Hello');
  }

  void introduce() {
    print('we are ${this.name} ${this.members.join(' ')}');
  }

  //getter
  String get firstMember {
    return this.members[0];
  }
}
