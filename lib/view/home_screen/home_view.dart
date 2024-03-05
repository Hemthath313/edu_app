import 'package:bottom_bar_matu/bottom_bar_double_bullet/bottom_bar_double_bullet.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 0; // Track the currently selected tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Display the content of the selected tab
        children: const [
          // Replace this with the actual content of each tab
          Center(child: Text('Home')),
          Center(child: Text('Chat')),
          Center(child: Text('Settings')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomBarDoubleBullet(
        items: [
          BottomBarItem(iconData: Icons.home, label: 'Home',),
          BottomBarItem(iconData: Icons.chat_bubble, label: 'Chat'),
          BottomBarItem(iconData: Icons.settings, label: 'Settings'),
          BottomBarItem(iconData: Icons.person_off_outlined, label: 'Profile'),
        ],
        onSelect: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected tab index
          });
        },
      ),
    );
  }
}
