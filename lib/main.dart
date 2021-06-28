import 'package:flutter/material.dart';

import 'package:hello_world/screens/HomeScreen.dart';
import 'package:hello_world/screens/LoginScreen.dart';
import 'package:hello_world/utils/myRoutes.dart';
import 'package:hello_world/utils/themes.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      theme: Themes.lightTheme(context), //Themes is user defined
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}
