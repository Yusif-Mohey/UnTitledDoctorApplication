import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../core/utils/value_manager.dart';
import '../../main_home/view/bottom_nav_screen.dart';
import '../widget/menu_screen.dart';

// الشاشة اللي بتجمع الدروير مع الـ NavBarView
class HomeWithDrawer extends StatefulWidget {
  const HomeWithDrawer({super.key});

  @override
  _HomeWithDrawerState createState() => _HomeWithDrawerState();
}

class _HomeWithDrawerState extends State<HomeWithDrawer> {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  int _selectedIndex = 0;

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _drawerController.close!();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: MenuScreen(onItemSelected: _changePage),
      mainScreen: NavBarView(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        drawerController: _drawerController,
      ),
      borderRadius: AppPadding.p24,
      showShadow: true,
      angle: -12,
      slideWidth: MediaQuery.of(context).size.width * 0.90,
    );
  }
}
