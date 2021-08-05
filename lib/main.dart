import 'package:awalmula/pages/home.dart';
import 'package:awalmula/pages/splashscreen.dart';
import 'package:awalmula/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProductProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => Splashscreen(),
            '/home': (context) => HomePage()
          },
        ));
  }
}
