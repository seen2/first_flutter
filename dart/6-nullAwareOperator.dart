//NULL aware operator (?.), (??), (??=)
// adding ? after any type like in int,string double and etc even classes can explain Dart this variable is nullable
//int? n;
class Num {
  int num = 10;
}

main(List<String> args) {
  var n;
  // int number;
  // if (n != null) {
  //   number = n.num;
  // }

  // -------Null aware--------
  n = Num(); //comment this and check

  int? number = n?.num; //if n is object and having property num assign it to number else make number null
  print(number);
  //assigning default value if null
  number = n?.num ?? 9;
  print(number);
  // if no value then assign
  int? val;
  int v = val ??= 9;
  print(val);
  print(v);
}
