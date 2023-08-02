void main() {
  Employee names = Employee('shinyoung');
  Employee names2 = Employee('kangkang');

  Employee.building = 'ap타워';
  print(names.name);
  names.printName();
  print(names2.name);
  names2.printName();
  Employee.staticPrintName();
}

class Employee {
  // static 은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  final String name;

  Employee(this.name);

  void printName() {
    print('${this.name} 입니다. ${building}에 있습니다.');
  }

  static void staticPrintName() {
    print('${building}에 있습니다.');
  }
}
