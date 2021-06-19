import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 31;

    return MaterialApp(
        home: Material(
      child: Center(
          child: Container(
        child: Text("Welcome to $days days flutter"),
      )),
    ));
  }
}
