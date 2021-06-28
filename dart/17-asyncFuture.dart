// Future
import 'dart:async';

class MyFutureClass {
  static asyncFunction(int val) {
    return Future.delayed(Duration(seconds: 2), () => val);
  }
}

main(List<String> args) {
  print("Started");
  // ignore: unused_local_variable
  int? res;
  try {
    final Future<int> response = MyFutureClass.asyncFunction(2);
    dynamic temp = response.then((int val) {
      res = val;
      print("1" + res.toString());
      return 0;
    }).then((value) {
      print("2 res=" + res.toString() + "2 value=" + value.toString());
      print(
          "In other then because then returns future of its own you can make async call");
      return res;
    }).catchError((onError) {
      print(onError);
    }, test: (err) {
      print(err.runtimeType);
      return true;
    }).whenComplete(() => print(res));
    print(temp);
  } catch (e) {
    //some task
  }
  // print(res);
  print("End");
}
