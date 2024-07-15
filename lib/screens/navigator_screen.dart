import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommmerce/screens/cart_screen.dart';
import 'package:ecommmerce/screens/favourites_Screen.dart';
import 'package:ecommmerce/screens/home_screen.dart';
import 'package:ecommmerce/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
          child: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.qr_code,
          size: 20,
        ),
        backgroundColor: Colors.orange,
      )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //takes floating to center
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        activeColor: Colors.orange,
        inactiveColor: Colors.black.withOpacity(0.5),
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        gapLocation: GapLocation.center,
      ),
    );
  }
}
