import 'package:crypto_wallet/Time_Circle.dart';
import 'package:crypto_wallet/exhacange_pages.dart';
import 'package:crypto_wallet/home_pages.dart';
import 'package:crypto_wallet/profil.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

enum _SelectedTab { home, compass, order, user }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: [homePages(), exhachangePages(), timeCircles(), profile()],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xffEF9F27),
        backgroundColor: Color(0xffF5F6FA),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "assets/homewarna.png"
                  : "assets/home.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.compass
                  ? "assets/menu warna.png"
                  : "assets/menu.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.order
                  ? "assets/time circle warna.png"
                  : "assets/Time Circle.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.user
                  ? "assets/profilwarna.png"
                  : "assets/Profile.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
