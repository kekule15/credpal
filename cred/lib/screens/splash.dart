import 'dart:async';

import 'package:cred/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _transitionToNextPageAfterSplash();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  _transitionToNextPageAfterSplash() async {
    return Timer(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_controller!.view),
          child: Text('CredPal Test',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
