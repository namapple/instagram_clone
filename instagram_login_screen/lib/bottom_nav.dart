import 'package:flutter/material.dart';
import 'package:instagram_login_screen/app_assets.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _bottomNavView = [
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Reels',
      style: optionStyle,
    ),
    Text(
      'Shopping',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    AppImg.imgTopTitle,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Image.asset(
                    AppImg.imgHeart,
                    height: 35,
                  ),
                ),
                Image.asset(
                  AppImg.imgMessage,
                  height: 35,
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Center(child: _bottomNavView[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImg.imgHome)),
            activeIcon: ImageIcon(AssetImage(AppImg.imgHomeActive)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImg.imgSearch)),
            activeIcon: ImageIcon(AssetImage(AppImg.imgSearchActive)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImg.imgReels)),
            activeIcon: ImageIcon(AssetImage(AppImg.imgReelsActive)),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImg.imgShopping)),
              activeIcon: ImageIcon(AssetImage(AppImg.imgShoppingActive)),
              label: 'Shopping'),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(AppImg.imgProfilePicture),
            ),
            activeIcon: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(AppImg.imgProfilePicture),
                ),
              ),
            ),
          ),
        ],
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        iconSize: 35,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
