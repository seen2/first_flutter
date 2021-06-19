//class

class X {
  final name; //can be changed using constructor at run time
  static const int age = 10; //class level access

  X(this.name);
}

class Person {
  String name = '';
  int age = 0;
//classic default constructor
  // Person(String name, [int age = 0]) {
  //   this.name = name;
  //   this.age = age;
  // }
  //when doing normal assignment and don't want to anything else other than initialization
  Person(this.name, [this.age = 10]);

  //named constructor
  Person.Guest() {
    name = "Guest";
    age = 18;
  }

  void showOutput() {
    print(name + "," + age.toString());
  }
}

main(List<String> args) {
  Person p = Person('Sintu');
  p.showOutput();

  p.name = "Sintu";
  p.age = 23;

  var joy = Person("Joy", 20);
  joy.showOutput();

  Person guest = Person.Guest();
  guest.showOutput();

  var jack = X("Jack"); //one time change
  print(jack.name);
  // jack.name = 'Jill';//error
  // print(jack.age);// error: not a instance level access
  print(X.age);
  // X.age = 10;// error: Constant variables can't be assigned a value
}
