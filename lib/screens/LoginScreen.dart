import 'package:flutter/material.dart';

import 'package:hello_world/utils/myRoutes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? name;
  bool buttonPress = false;

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
            Text("Welcome " + (name != null ? name.toString() : ""),
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
                    onChanged: (value) {
                      name = value.length > 0
                          ? '${value[0]}'.toUpperCase() + value.substring(1)
                          : '';
                      setState(() {});
                    },
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

            InkWell(
              onTap: () async {
                setState(() {
                  buttonPress = !buttonPress;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 40,
                width: buttonPress ? 150 : 100,
                alignment: Alignment.center,
                child: buttonPress
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () =>
            //       {Navigator.pushNamed(context, MyRoutes.homeRoute)},
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(150, 30)),
            // ),
            SizedBox(
              height: 10,
            ),
          ]),
        ));
  }
}
