import 'dart:async';

class MyFutureClass {
  static asyncFunction(int val) {
    return Future.delayed(Duration(seconds: 2), () => val);
  }
}

main(List<String> args) {
  print("Started");
  // ignore: unused_local_variable
  final result = helper();
  print("end");
}

int getValue(int val) {
  print("result $val");
  return val;
}

Future<int> helper() async {
  try {
    final int val = await MyFutureClass.asyncFunction(2);
    print(val);
    return getValue(val);
  } catch (e) {
    return 0;
  }
}

//we can use <await for()> for Streams
