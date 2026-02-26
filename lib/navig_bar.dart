import 'package:flutter/material.dart';
import 'package:session7_gdg/home_screen.dart';
import 'package:session7_gdg/search.dart';
import 'package:session7_gdg/settings.dart';
import 'package:session7_gdg/shopping.dart';

class NavigBar extends StatefulWidget {
  @override
  State<NavigBar> createState() => _NavigBarState();
}

class _NavigBarState extends State<NavigBar> {
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List <Widget> screens = [
      HomeScreen(),
      Search(),
      Shopping(),
      Settings()
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",tooltip: "this home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search",tooltip: "this search"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Shopping",tooltip: "this shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",tooltip: "this settings"),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: curentIndex,
        onTap: (value) => setState(() {
          curentIndex = value;
        }),
        ),
        body: screens[curentIndex],
    );
  }
}