import 'dart:async';

import 'package:cred/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _transitionToNextPageAfterSplash();
    super.initState();
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
    return const Scaffold(
      body: Center(
        child: Text('CredPal Test',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
