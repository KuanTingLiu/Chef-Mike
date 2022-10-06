import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/components/google_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[Text("Who are you?")],
          ),
          // If not account setup previous when login to Google or Facebook
          // then create login page
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[GoogleLoginButton()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(onPressed: () {}, child: Text("Facebook"))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ElevatedButton(onPressed: () {}, child: Text("Guest"))],
          )
        ]),
      ),
    );
  }
}
