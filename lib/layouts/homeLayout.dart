import 'package:flutter/material.dart';
import 'package:qize/pages/care_view.dart';
import 'package:qize/pages/workout_view.dart';

import '../pages/home_view.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [
    Home_View(),
    Workout_View(),
    Care_View(),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuare = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: theme.primaryColor, size: 40),
        selectedItemColor: theme.primaryColor,
        unselectedIconTheme: IconThemeData(
            color: theme.bottomNavigationBarTheme.unselectedItemColor,
            size: 30),
        unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_icon.png")),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/arrow.png")),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/images/navigation-pointer-01.png")),
            label: "",
          ),
        ],
      ),
    );
  }
}
