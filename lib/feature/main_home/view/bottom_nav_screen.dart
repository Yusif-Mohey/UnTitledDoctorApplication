import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/utils/color_manager.dart';
import '../../book/view/book_screen.dart';
import '../../chat/view/mean_chat_screen.dart';
import '../../favourit/view/fav_screen.dart';
import '../../home_screen/views/home_screen.dart';

class NavBarView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;
  final ZoomDrawerController drawerController;

  NavBarView({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
    required this.drawerController,
  });

  final List<Widget> _pages = [
    HomeScreen(),
    FavScreen(),
    BookScreen(),
    MeanChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            drawerController.toggle!();
          },
        ),
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.2)),
          ],
        ),
        child: GNav(
          curve: Curves.bounceIn,
          rippleColor: Colors.grey,
          hoverColor: Colors.grey,
          haptic: true,
          tabBorderRadius: 100,
          gap: 3,
          activeColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: ColorManager.primaryColor,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
          tabs: [
            GButton(iconSize: 28, icon: Icons.home, iconColor: Colors.grey),
            GButton(icon: Icons.favorite_border, iconColor: Colors.grey),
            GButton(iconSize: 28, icon: Icons.book, iconColor: Colors.grey),
            GButton(iconSize: 29, icon: Icons.chat, iconColor: Colors.grey),
          ],
          selectedIndex: selectedIndex,
          onTabChange: onTabChange,
        ),
      ),
    );
  }
}
