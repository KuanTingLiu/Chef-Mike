import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeAnimated extends StatefulWidget {
  const WelcomeAnimated({Key? key}) : super(key: key);

  @override
  State<WelcomeAnimated> createState() => _WelcomeAnimatedState();
}

class _WelcomeAnimatedState extends State<WelcomeAnimated>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 7),
    vsync: this,
  );

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuint);

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultTextStyle(
            style: const TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w900),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('What Are You Craving\nFor Today?',
                    rotateOut: false),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 64),
          FadeTransition(
            opacity: _animation,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Start Exploring")),
          ),
        ],
      ),
    );
  }
}
