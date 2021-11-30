import 'package:cred/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(380, 720),
      builder: () => const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
  }
}
