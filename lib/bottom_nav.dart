import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_login_screen/models/bottom_nav_model.dart';
import 'package:instagram_login_screen/views/browse.dart';
import 'package:instagram_login_screen/views/home.dart';
import 'package:instagram_login_screen/views/notificatitons.dart';
import 'package:instagram_login_screen/views/profile.dart';
import 'package:instagram_login_screen/views/reels.dart';

import 'utils/app_assets.dart';

class NewBottomNav extends StatefulWidget {
  const NewBottomNav({Key? key}) : super(key: key);

  @override
  _NewBottomNavState createState() => _NewBottomNavState();
}

class _NewBottomNavState extends State<NewBottomNav> {
  int _selectedIndex = 0;

  static const List<Widget> _bottomNavView = [
    Home(),
    Browse(),
    Reels(),
    Notificatitons(),
    Profile(),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: _navBarItem
            .map(
              (f) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  f.icon,
                  width: 24,
                ),
                activeIcon: SvgPicture.asset(
                  f.activeIcon,
                  width: 24,
                ),
                label: f.title,
              ),
            )
            .toList(),
      ),
    );
  }
}

List<NavBarModel> _navBarItem = [
  NavBarModel(
    icon: AppImg.imgHome,
    activeIcon: AppImg.imgHomeActive,
    title: 'Home',
  ),
  NavBarModel(
    icon: AppImg.imgSearch,
    activeIcon: AppImg.imgSearchActive,
    title: 'Search',
  ),
  NavBarModel(
    icon: AppImg.imgReels,
    activeIcon: AppImg.imgReelsActive,
    title: 'Reels',
  ),
  NavBarModel(
    icon: AppImg.imgHeart,
    activeIcon: AppImg.imgHeartActive,
    title: 'Notificatitons',
  ),
  NavBarModel(
    icon: AppImg.imgProfile,
    activeIcon: AppImg.imgProfileActive,
    title: 'Profile',
  ),
];
