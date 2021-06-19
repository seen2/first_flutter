void main(List<String> args) {
  //type conversion

  //------string-> int--------------
  int i = int.parse('1');
  assert(i == 1);
  print(i + 1);

  //------string-> double--------------
  double d = double.parse('1.23');
  assert(d == 1.23);
  print(d + 2.3 + 1);

  //------string<- int,double--------------
  String str = i.toString();
  assert(str == '1');
  print(str);
  str = d.toString();
  assert(str == '1.23');
  print(str);
  str = 3.142317.toStringAsFixed(2);
  print(str);

  //is operator for type check
  bool boolean = str is String;
  print(boolean);
}
