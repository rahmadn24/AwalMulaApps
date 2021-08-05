import 'dart:async';

import 'package:flutter/material.dart';
import 'package:awalmula/style.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('awalmula-loader.gif'))),
        ),
      ),
    );
  }
}
