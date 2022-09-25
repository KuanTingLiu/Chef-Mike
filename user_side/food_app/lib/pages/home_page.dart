import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:food_app/components/welcome_animated.dart';

// Add animated_text_kit
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    // Will be animated pictures
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/welcome_background.jpg')),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const WelcomeAnimated()
        ],
      ),
    );
  }
}
