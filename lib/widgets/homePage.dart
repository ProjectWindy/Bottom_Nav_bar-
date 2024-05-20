import 'package:bottom_nav_bar/widgets/homeScreen.dart';
import 'package:bottom_nav_bar/widgets/likesScreen.dart';
import 'package:bottom_nav_bar/widgets/searchScreen.dart';
import 'package:bottom_nav_bar/widgets/settingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    homeScreens(),
    LikesScreen(),
    SearchScreens(),
    SettingsScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: GNav(
              // Khoang cach ky tu voi icon
              gap: 8,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.blueAccent,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(17),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ));
  }
}
