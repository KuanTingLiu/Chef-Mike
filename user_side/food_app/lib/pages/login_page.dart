import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Row(
          children: [Text("Who are you?")],
        ),
        // If not account setup previous when login to Google or Facebook
        // then create login page
        Row(children: [
          ElevatedButton(onPressed: () {}, child: Text("Google"))
        ]),
        Row(children: [
          ElevatedButton(onPressed: () {}, child: Text("Facebook"))
        ]),
        Row(
          children: [ElevatedButton(onPressed: () {}, child: Text("Guest"))],
        )
      ]),
    );
  }
}
