import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';
import 'package:test_task_flutter/common/res/app_icons.dart';
import 'package:test_task_flutter/screens/home_screen.dart';
import 'package:test_task_flutter/screens/login_screen.dart';
import 'package:test_task_flutter/screens/profile_screen.dart';
import 'package:test_task_flutter/screens/shop_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  static const id = 'bottom_navbar';


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.defaultWhite,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: AppIcons.homeIcon,
            activeIcon: AppIcons.homeIconActive,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: AppIcons.shopIcon,
            activeIcon: AppIcons.shopIconActive,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: AppIcons.profileIcon,
            activeIcon: AppIcons.profileIconActive,
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.plainOcean,
        unselectedItemColor: AppColors.unSelectedItemsColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}