import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // style widget
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  // widgets
  static const List<Widget> _widgetOptions = <Widget>[
    // 1 page
    Text(
      "Главная",
      style: optionStyle,
    ),
    // 2 page
    Text(
      "Избранные",
      style: optionStyle,
    ),
    // 3 page
    Text(
      "Чат",
      style: optionStyle,
    ),
    // 4 page
    Text(
      "Группа",
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      // bottom nav Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.white.withOpacity(1),
              )
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              // style navBar
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              activeColor: Colors.black,
              color: Colors.grey,
              tabBackgroundColor: Colors.grey.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              iconSize: 30,
              textSize: 20,
              gap: 10,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Главная",
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: "Избранные",
                ),
                GButton(
                  icon: Icons.chat_outlined,
                  text: "Чат",
                ),
                GButton(
                  icon: Icons.group_outlined,
                  text: "Группа",
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
