import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "favourite screen",
          style: TextStyle(color: Colors.green, fontSize: 40),
        ),
      ),
    );
  }
}
