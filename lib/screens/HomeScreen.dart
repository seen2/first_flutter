import 'package:flutter/material.dart';

import 'package:hello_world/screens/DrawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to 30 days of flutter"),
      )),
      drawer: DrawerScreen(),
    );
  }
}
