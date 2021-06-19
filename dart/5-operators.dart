void main(List<String> args) {
  //operator

  // mathematical operator
  int a = 10, b = 20;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b); //integer
  print(a % b);
//conditional operator
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

//terinary operators

  print(a == b ? a : b);
//relational operator
  bool result = a == 1 && b == 2;
  print(result);
  result = a == 1 || b == 2;
  print(result);
//unirary operator
  a++;
  print(a);
  ++a;
  print(a);
  a--;
  print(a);
  --a;
  print(a);
//shorthand operators
  a += 1;
  print(a);
  a -= 1;
  print(a);
  a *= 2;
  print(a);
  a ~/= a;
  print(a);
  double d = 2.5;
  d /= 2;
  print(d);
}
