import 'dart:async';
import '../home.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashFuturePage extends StatefulWidget {
  SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)
    await Future.delayed(Duration(seconds: 3));
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: Text(
        "Title",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      futureNavigator: futureCall(),
    );
  }
}
