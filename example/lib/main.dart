import 'splash/splash_future.dart';
import 'package:flutter/material.dart';

import 'splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashFuturePage(),
      home: SplashPage(),
    );
  }
}
