import 'package:bottom_bar_matu/bottom_bar_double_bullet/bottom_bar_double_bullet.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:edu_app/presentation/screens/view/home_tab/home_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Providers/bottom_navigation_provider.dart';
import '../chat_tab/chat_screen.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarProvider =
        Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      body: IndexedStack(
        index: bottomNavigationBarProvider.selectedIndex,
        children: const [
          // TODO: Replace with the actual content for each tab
          HomeTab(),
          ChatScreen(),
          // SettingsTab(),
          // ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomBarDoubleBullet(
        items: [
          BottomBarItem(iconData: Icons.home, label: 'Home'),
          BottomBarItem(iconData: Icons.chat_bubble, label: 'Chat'),
          BottomBarItem(iconData: Icons.settings, label: 'Settings'),
          BottomBarItem(iconData: Icons.person_outline, label: 'Profile'),
        ],
        onSelect: (index) {
          print('Selected index: $index');
          bottomNavigationBarProvider.setSelectedIndex(index);
        },
      ),
    );
  }
}
