//import 'package:ecommmerce/screens/login_screen.dart';
import 'package:ecommmerce/screens/navigator_screen.dart';
import 'package:flutter/material.dart';
//import 'package:ecommmerce/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Karu Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFEF6969)),
      home: const NavigatorScreen(),
    );
  }
}
