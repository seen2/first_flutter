import 'dart:async';

class NumberIterator {
  NumberIterator() {
    Timer.periodic(Duration(seconds: 1), (t) {
      _controller.sink.add(count);
      count++;
    });
  }
  var count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}

main(List<String> args) {
  final myStream = NumberIterator().stream;

  // subscribtion (defaut:single(1) subscription(ie. listen))
  final subscription = myStream.listen((data) => print("Data $data"),
      onError: (err) => print(err),
      //default true, if changed will work even after erroroccured
      cancelOnError: false,
      onDone: () => print("done"));

  final myMultipleSubscriptionStream =
      NumberIterator().stream.asBroadcastStream();
  myMultipleSubscriptionStream.listen((data) => print("Data  $data"));

  myMultipleSubscriptionStream.listen((data) => print("Data Again $data"));

  //features
// I got streams of Strings
  // myMultipleSubscriptionStream.map((num) => 'String $num').listen(print);
//making condition
  myMultipleSubscriptionStream
      .where((e) => e % 2 != 0)
      .map((num) => 'String $num')
      .listen(print);
  // distinct value using .distinct

  subscription.pause();
  subscription.resume();
  subscription.cancel();

//error
  // myMultipleSubscriptionStream.;
  // myMultipleSubscriptionStream.resume();
  // myMultipleSubscriptionStream.cancel();
}
