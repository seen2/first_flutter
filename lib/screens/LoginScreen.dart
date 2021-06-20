import 'package:flutter/material.dart';

import 'package:hello_world/utils/myRoutes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, MyRoutes.homeRoute)},
              child: Text("Login"),
              style: TextButton.styleFrom(minimumSize: Size(150, 30)),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ));
  }
}
